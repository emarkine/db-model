require 'db/model/version'

module Db
  module Model
    require 'lib/db/model/railtie' if defined?(Rails)
  end
end
