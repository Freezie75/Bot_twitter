require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = 'LY0f1D3e6TXuIqOdCn2cuYLY5'
  config.consumer_secret     = 'SsFwpCAbRmbr2zBvbwmRYKpg8ywxsD6hYUTwvUAOvHT8uNOB0P'
  config.access_token        = '976926810641399808-GHAdhdIBODp2s8WxGYnFSuXmcJvAY81'
  config.access_token_secret = 'JWYkbkeBb3G2SKK4gRguO6QkITZ8cREXGAI4741Qr7map'
end

puts "Quelle tweet voulez vous chercher ? "
search_tweet = gets.chomp

puts "Indiquer le nombre de tweet que vous voulez récupérer (En chiffre) : "
nb_tweet = gets.chomp.to_i

client.search('to:' + search_tweet, result_type: 'recent').take(nb_tweet).collect do |tweet|
  puts "#{tweet.user.screen_name}: #{tweet.text}"
end
