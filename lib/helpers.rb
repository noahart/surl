module Sinatra
  module SurlHelpers
    module HelperMethods
    end

    def self.registered(app)
      app.helpers(HelperMethods)
    end
  end

  register SurlHelpers
end
