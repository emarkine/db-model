require 'db/model'
require 'rails'

module Db
  module Model
    class Railtie < Rails::Railtie
      rake_tasks do
        Dir[File.join(File.dirname(__FILE__), 'tasks/*.rake')].each {|f| load f}
      end
    end
  end
end