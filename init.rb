require "watchers/version"

Redmine::Plugin.register :watchers do
  name 'Configure issue watchers'
  author 'Ivan Nikolaev'
  description 'Plugin for Redmine to configure issue watchers list'
  version Watchers::VERSION
  url 'https://github.com/destillat/watchers'
  author_url 'inrecolan.com'
  settings :default => {
      'add_creator_to_issue_watchers' => 0,
      'add_assignee_to_watchers_of_created_issue' => 0,
      'add_assignee_to_watchers_of_edited_issue' => 0
  }, :partial => 'settings/watchers_settings'
end

Rails.configuration.to_prepare do
  require_dependency 'issue'
  require_dependency 'watchers_issue_patch'
  unless Issue.included_modules.include? Watchers::IssuePatch
    Issue.send(:include, Watchers::IssuePatch)
  end
end


  