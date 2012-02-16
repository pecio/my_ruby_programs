class Reverser
  def form
    '<form method="POST"><p>String to reverse: <input type="text" name="text"/></p></form>'
  end

  def head
    '<html><head><title>Reverser</title></head><body>'
  end

  def footer
    '</body></html>'
  end

  def reversed(string)
    "<p>Reversed: #{string.reverse}</p>"
  end

  def call(env)
    request = Rack::Request.new(env)
    response = Rack::Response.new

    response['Content-Type'] = 'text/html; charset=utf-8'
    response.status          = 200
    response.body            = [ head ]

    case request.request_method
    when 'GET'
      response.body.push form
    when 'POST'
      response.body.push reversed(request.params['text'])
      response.body.push form
    else
      response.body.push "<h2>Unimplemented</h2>"
      response.status = 501
    end

    response.body.push footer
    response.finish
  end
end
