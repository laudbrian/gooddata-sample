#encoding: UTF-8
# 30 Days of Automation: GoodData Ruby SDK
# Visit http://sdk.gooddata.com/gooddata-ruby/ for Tutorials, Examples, and Support.

require 'gooddata'

GoodData.connect 'YOUR_USER_ID', 'YOUR_PASSWORD'

projects = [
  GoodData::Project['YOUR_PROJECT_ID'],
  GoodData::Project['ANOTHER_PROJECT_ID']
]

projects.each do |project|
  GoodData.with_project(project) do |project|
    pp project.title
  end
end

