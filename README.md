# Redmine watchers plugin
Configure default watchers of the issue

## Requirements
- Redmine 3.3.x or higher.
- Ruby 2.x

## Usage
- Log in Redmine with Admistrator.
- Go to Administration - Modules.
- Find 'Configure isssue watchers' plugin
- Click parameters
- Configure watcher settings

## Installation
In Redmine folder,
```bash
cd plugins
git clone https://github.com/destillat/watchers
cd ..
bundle install --without test
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
```

Finally restart Redmine.

## License
Proprietary
