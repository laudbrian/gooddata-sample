#encoding: UTF-8
# 30 Days of Automation: GoodData Ruby SDK
# Visit http://sdk.gooddata.com/gooddata-ruby/ for Tutorials, Examples, and Support.
require 'gooddata'

GoodData.connect 'laudbrian[@]gmail.com', 'YOUR_PASSWORD'
GoodData.project = 'YOUR_PID'
GoodData::Process.deploy('./process.zip', :name => "Testing Process", :type => "RUBY")
