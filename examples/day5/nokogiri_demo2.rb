# This program does have output :)
require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://rubylearning.com/"))

# Search with XPath
puts doc.xpath("//h2[@id='slogan']").first.content
# expected output: "Helping Ruby Pogrammers become Awesome!"

# Search with CSS3
puts doc.css("#footer p strong:first-child")[0].content
# expected output: "Rubylearning.com - A Ruby Tutorial"
