# Count the number of times the word "the" appears at
# http://satishtalim.github.com/webruby/chapter3.html
# using open-uri and Hpricot
require 'open-uri'
require 'hpricot'

page = Hpricot(open('http://satishtalim.github.com/webruby/chapter3.html'))

# Counting gets more complicated (although also more precise) than
# in the net/http and open-uri versions
puts page.at(:body).to_plain_text.split.collect{|word| word == "the"}.size
puts page.at(:body).to_plain_text
