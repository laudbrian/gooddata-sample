# 30 Days of Automation: GoodData Ruby SDK
# Visit http://sdk.gooddata.com/gooddata-ruby/ for Tutorials, Examples, and Support.

#I am a comment!
require 'gooddata'

# Login to the GoodData project
GoodData.connect 'yoyo[@]gmail.com', 'YOUR_PASSWORD'

puts 'Paste the Project ID:'
id = gets.chomp

# Tell the GoodData Module what the default project is.
GoodData.project = id

CSV.open(id + "_metrics.csv", 'wb') do |csv|
  metrics = GoodData::Metric.all :full => true
  metrics.each do |metric|
    m = metric.pretty_expression
    puts m
    csv << [m]
  end
end

puts 'The CSV is ready!'
