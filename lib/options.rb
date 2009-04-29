module Sinatra
  module SurlOptions
    def self.registered(app)
      app.set(:site_name,'Surl')
    end
  end

  register SurlOptions
end
