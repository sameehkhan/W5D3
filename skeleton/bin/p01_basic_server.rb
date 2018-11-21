require 'rack'

# Rack::Server.start({
#   app: app.call(env),
#   Port: 3000
# })
# 
# app = Proc.new do |env|
#   req = Rack::Request.new(env)
#   res = Rack::Response.new
#   res['Content-Type'] = 'text/html'
#   res.write("Hello world!")
#   res.finish
# end

class MyRackApp
  def self.call(env)
    req = Rack::Request.new(env)
    res = Rack::Response.new

    res.write("Hello world!")
    res.finish
  end
end

Rack::Server.start({
  app: MyRackApp,
  Port: 3000
})