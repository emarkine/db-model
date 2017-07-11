require 'db/model/version'

# Namespace for all core DB projects.
module Db
  # Namespace for db-model code.
  module Model
    # Railtie to hook into Rails.
    class Railtie < ::Rails::Railtie
      rake_tasks do
        load 'db/model/tasks/db_model.rake'
      end
    end
  end
end
