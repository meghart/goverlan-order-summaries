require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'force'
require "omniauth"
require "omniauth-salesforce"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Workspace
  class Application < Rails::Application
     #configure do
      #enable :logging
      #enable :sessions
      #set :show_exceptions, false
      #set :session_secret, ENV['SECRET']
    #end
  
    use OmniAuth::Builder do
      provider :salesforce, ENV['SALESFORCE_KEY'], ENV['SALESFORCE_SECRET']
    end
  
    #before /^(?!\/(auth.*))/ do   
      #redirect '/authenticate' unless session[:instance_url]
    #end
  
  
    #helpers do
      #def client
        #@client ||= Force.new instance_url:  session['instance_url'], 
                              #oauth_token:   session['token'],
                              #refresh_token: session['refresh_token'],
                              #client_id:     ENV['SALESFORCE_KEY'],
                              #client_secret: ENV['SALESFORCE_SECRET']
      #end
    #end
  
  
    #get '/' do
      #logger.info "Visited home page"
      #@accounts= client.query("select Id, Name from Account")    
      #erb :index
    #end
  
  
    get '/authenticate' do
      redirect "/auth/salesforce"
    end
  
  
    get '/auth/salesforce/callback' do
      logger.info "#{env["omniauth.auth"]["extra"]["display_name"]} just authenticated"
      credentials = env["omniauth.auth"]["credentials"]
      session['token'] = credentials["token"]
      session['refresh_token'] = credentials["refresh_token"]
      session['instance_url'] = credentials["instance_url"]
      redirect '/'
    end
  
    get '/auth/failure' do
      params[:message]
    end
  
    get '/unauthenticate' do
      session.clear 
      'Goodbye - you are now logged out'
    end
  
    error Force::UnauthorizedError do
      redirect "/auth/salesforce"
    end
  
    error do
      "There was an error.  Perhaps you need to re-authenticate to /authenticate ?  Here are the details: " + env['sinatra.error'].name
    end
  
    run! if app_file == $0

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Eastern Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end
