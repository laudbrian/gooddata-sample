require 'gooddata'
require 'twitter'

GoodData.connect 'laudbrian[@]gmail.com','YOUR_PASSWORD'
GoodData.project = 'YOUR_PROJECT_ID'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "YOUR_CONSUMER_KEY"
  config.consumer_secret     = "YOUR_CONSUMER_SECRET"
  config.access_token        = "YOUR_ACCESS_TOKEN"
  config.access_token_secret = "YOUR_TOKEN_SECRET"
end

# Here we would check a given metric and execute. For the example we will just declare it.
# m = GoodData::Metric[294]
# sales = m.execute
goal = 100
sales = [*1..100].sample + 100

if goal <= sales
  client.update("This quarter with the help of our project \"#{GoodData.project.title}\" made our goal of #{goal} with #{sales}!")
end


