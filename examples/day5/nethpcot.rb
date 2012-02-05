require 'open-uri'
# hpricot is non standard - use gem install hpricot
# It is an HTML parser
require 'hpricot'

page = Hpricot(open('http://rubylearning.com'))
puts "Page title is: " + page.at(:title).inner_html
