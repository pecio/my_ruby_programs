class Simple
  def call(env)
    [200,
     {"Content-Type" => "text/plain; charset=UTF-8"},
     ["The argument supplied was \"#{ARGV[0]}\"."]
    ]
  end
end
