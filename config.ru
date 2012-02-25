require 'logger'
rack_time = Proc.new { |env|
  [200,
   {"Content-Type" => "text/plain"},
   ["Hello. The time is #{Time.now}"]
  ]
}
builder = Rack::Builder.new do
  use Rack::CommonLogger
  Logger.new('rack.log')
  run rack_time
end
Rack::Handler::WEBrick.run builder, :Port => 9292
