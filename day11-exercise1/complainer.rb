# Complainer middleware: returns a 404 error if path is not /
module Complainer
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] == '/'
        @app.call(env)
      else
        [404, {"Content-Type" => "text/plain"}, ['Not OK!']]
      end
    end
  end
end
