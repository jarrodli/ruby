=begin
	Jarrod Li
	03 July 2017
	Webscraping
=end

require 'rubygems'
require 'mechanize'

agent = Mechanize.new
page = agent.get("https://www.google.com/")
