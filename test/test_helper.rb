require 'rubygems'
require 'test/unit'
require 'active_record'
require 'class-table-inheritance'
require 'yaml'

database = YAML::load(IO.read(File.dirname(__FILE__) + '/database.yml'))
ActiveRecord::Base.establish_connection(database['sqlite3'])
load(File.dirname(__FILE__) + "/schema.rb") if !File.exists?(database['sqlite3'][:database])

require 'models/product'
require 'models/book'
require 'models/mod'
require 'models/mod/video'
require 'models/mod/user'
require 'models/manager'