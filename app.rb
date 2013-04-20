require 'sinatra'
require 'twitter'


Twitter.configure do |config|
  config.consumer_key = ENV['CONKEY']
  config.consumer_secret = ENV['CONSEC']
  config.oauth_token = ENV['OAUTHTOKEN']
  config.oauth_token_secret = ENV['OAUTHSECRET']
end
  puts Twitter.search('#yoloswag420', count: 1)

get '/' do
  Twitter.search('#yoloswag420', count: 1).results.first.text
end
