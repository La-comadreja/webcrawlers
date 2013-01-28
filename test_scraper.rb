require 'rubygems'
require 'crack'
require 'open-uri'
require 'rest-client'

#Latest posts of LinkedIn "Job Openings, Job Leads and Job Connections"
url = "http://www.linkedin.com/groupItem?view=&gid=1976445&type=member&item=38544735&commentID=-1&qid=7bbff824-ff51-4612-93a4-5a14fd0fb8d2&goback=%2Egmp_1976445#lastComment"

puts Crack::JSON.parse(RestClient.get(url))