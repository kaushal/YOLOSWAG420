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

get '/' do
  @tweets = Twitter.search('#yoloswag420', count: 100).results.shuffle
  slim :index
end

