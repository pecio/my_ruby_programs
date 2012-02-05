require 'net/http'

# It seems we use a non canonical constructor now
# I have checked in irb and it would have work with URI('url')
url = URI.parse('http://rubylearning.com/data/text.txt')

Net::HTTP.start(url.host, url.port) do |http|
  # We create a Net::HTTP:Get object, which seems to represent a GET request
  req = Net::HTTP::Get.new(url.path)
  # We run the request, get the body and print it out
  puts http.request(req).body
end
