# Count the number of times the word "the" appears at
# http://satishtalim.github.com/webruby/chapter3.html
# using open-uri and Nokogiri
require 'open-uri'
require 'Nokogiri'

page = Nokogiri::HTML(open('http://satishtalim.github.com/webruby/chapter3.html'))

# Counting gets more complicated (although also more precise) than
# in the net/http and open-uri versions.
# In fact, we get even less "the" occurences than with Hpricot
puts page.css("body")[0].content.split.select{|word| word == "the"}.size
