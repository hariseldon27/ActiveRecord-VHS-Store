require 'bundler/setup'
Bundler.require

# sets up connection to the database file
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3', # Postgres, MySQL, etc
  database: "db/development.sqlite"
)

# enables logging in console whenever ActiveRecord writes SQL for us
ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all 'app'

#set vhs so it is plural and singular
ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'vhs', 'vhs'
end