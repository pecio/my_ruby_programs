module MyMiddleware
  class Hello
    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] == '/hello'
        [200, {"Content-type" => "text/plain"}, ["Hello from the middleware!"]]
      else
        @app.call(env)
      end
    end
  end
end
