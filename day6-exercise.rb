# Create a rack app that "shows" a page with the command line
# arguments to the string
output_command_line = lambda {|env|
  [200,
   {"Content-Type" => "text/plain"},
   [ARGV.join(' ')]]
  }
puts output_command_line.call({})
