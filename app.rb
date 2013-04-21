require 'sinatra'
require 'twitter'
require 'slim'

Slim::Engine.set_default_options pretty: true, sort_attrs: false

Twitter.configure do |config|
  config.consumer_key = ENV['CONKEY']
  config.consumer_secret = ENV['CONSEC']
  config.oauth_token = ENV['OAUTHTOKEN']
  config.oauth_token_secret = ENV['OAUTHSECRET']
end

@@tweets = Twitter.search('#yoloswag420', count: 100).results.shuffle

get '/' do
<<<<<<< HEAD
=======
  @tweets = Twitter.search('#yoloswag420', count: 30).results.shuffle
>>>>>>> bed6cb78a00d471879fe28c4622db6a1b3e974e1
  slim :index
end

get '/yoloswagupdate420' do
  @@tweets = Twitter.search('#yoloswag420', count: 100).results.shuffle
  "HI"
end
