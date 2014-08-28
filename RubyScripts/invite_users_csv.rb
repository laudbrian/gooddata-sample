# encoding=UTF-8
# 30 Days of Automation: GoodData Ruby SDK
# Visit http://sdk.gooddata.com/gooddata-ruby/ for Tutorials, Examples, and Support.

require 'gooddata'

GoodData.connect 'gooddata@gmail.com', 'YOUR_PASSWORD'
GoodData.project= 'YOUR_PROJECT_ID'

CSV.foreach('users.csv') do |user|
  email = user[0]
  role = user[1]
  GoodData.project.invite(email, role)
end
