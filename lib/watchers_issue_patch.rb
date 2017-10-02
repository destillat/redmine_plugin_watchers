require_dependency 'issue'

module Watchers
  # Patches Redmine's Issues dynamically.  Adds a hook
  # +before_save+ to Issue to add assignee to watchers list
  # and +before_create+ to add issue creator to watchers list
  module IssuePatch
    def self.included(base) # :nodoc:
      base.extend(ClassMethods)

      base.send(:include, InstanceMethods)

      # Same as typing in the class
      base.class_eval do
        unloadable # Send unloadable so it will not be unloaded in development
        before_create :add_creator_to_watchers
        before_create :add_assignee_to_watchers_of_created_issue
        before_update :add_assignee_to_watchers_of_edited_issue
      end

    end

    module ClassMethods

    end

    module InstanceMethods
      def add_creator_to_watchers
        self.add_watcher(User.current) if Setting.plugin_watchers['add_creator_to_issue_watchers'] == '1'
      end

      def add_assignee_to_watchers_of_created_issue
        self.add_watcher(assigned_to) if Setting.plugin_watchers['add_assignee_to_watchers_of_created_issue'] == '1' && !watched_by?(assigned_to)
      end

      def add_assignee_to_watchers_of_edited_issue
        self.add_watcher(assigned_to) if Setting.plugin_watchers['add_assignee_to_watchers_of_edited_issue'] == '1' && !watched_by?(assigned_to)
      end
    end
  end
end


