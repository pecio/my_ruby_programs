require 'rack'

output_command_line = lambda {|env|
  [200,
   {"Content-Type" => "text/plain"},
   ["Command line argument you timed was: #{ARGV.join(' ')}"]
  ]
  }
Rack::Handler::WEBrick.run output_command_line, :Port => 8500
