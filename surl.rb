#!/usr/bin/env ruby

%w(rubygems haml sinatra/base darkext darkext/sinatra).each { |lib| require lib }
Dir['lib/*.rb'].each { |file| load file }

load 'local_options.rb' if File.exists?('local_options.rb')

class SurlSite < Sinatra::Default
  set(:app_file, File.expand_path(__FILE__))
  register Sinatra::DarkHelpers
  
  register Sinatra::SurlOptions
  register Sinatra::SurlHelpers
  register Sinatra::SurlError
  register Sinatra::SurlGet
  register Sinatra::SurlPost
  register Sinatra::SurlPut
  register Sinatra::SurlDelete
  register Sinatra::LocalOptions unless defined?(Sinatra::LocalOptions).nil?
end

SurlSite.run! if __FILE__ == $0
