require './complainer'
use Complainer::Middleware
run Proc.new { |env|
  [200,
   { "Content-Type" => "text/plain" },
   [ 'OK!' ]
  ]
}
