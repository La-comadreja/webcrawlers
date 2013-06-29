require 'rubygems'
require 'nokogiri'
require 'open-uri'

#Indeed Job Search
page = Nokogiri::HTML(open("http://www.indeed.com/q-ruby-developer-l-new-york,-ny-jobs.html"))

for i in 0...page.css("span[class='company']").length do
  print page.css("span[class='company']")[i].text
  print " - "
  puts page.css("span[class='location']")[i].text

  #TO DO: Scrape job title   
 
  puts page.css("span[class='summary']")[i].text
  puts
end

