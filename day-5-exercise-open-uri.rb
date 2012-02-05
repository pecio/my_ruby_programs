# Count the number of times the word "the" appears at
# http://satishtalim.github.com/webruby/chapter3.html
# using open-uri
require 'open-uri'

page = open('http://satishtalim.github.com/webruby/chapter3.html')

puts page.readlines.join.scan(/\bthe\b/i).count
