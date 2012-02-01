# Count the number of times the word "the" appears at
# http://satishtalim.github.com/webruby/chapter3.html
# using only net/http (and URI)
require 'net/http'

uri = URI('http://satishtalim.github.com/webruby/chapter3.html')

# Obtaining the text is straightforward
page = Net::HTTP.get(uri) # page should be a (long) string

# Counting the occurences of "the" is not so trivial
# But it is fun with Ruby
puts page.split.select{|word| word == "the"}.size
