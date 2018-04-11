require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = 'LY0f1D3e6TXuIqOdCn2cuYLY5'
  config.consumer_secret     = 'SsFwpCAbRmbr2zBvbwmRYKpg8ywxsD6hYUTwvUAOvHT8uNOB0P'
  config.access_token        = '976926810641399808-GHAdhdIBODp2s8WxGYnFSuXmcJvAY81'
  config.access_token_secret = 'JWYkbkeBb3G2SKK4gRguO6QkITZ8cREXGAI4741Qr7map'
end

print 'Ecrivez votre tweet : '
tweet = gets.chomp

puts 'Envoi en cours...'

client.update(tweet)
puts 'Tweet envoyé !'
