require 'sinatra'
require 'twitter'
require 'slim'

Twitter.configure do |config|
  config.consumer_key = ENV['CONKEY']
  config.consumer_secret = ENV['CONSEC']
  config.oauth_token = ENV['OAUTHTOKEN']
  config.oauth_token_secret = ENV['OAUTHSECRET']
end

get '/' do
  @tweets = Twitter.search('#yoloswag420', count: 100).results
  slim :index
end

