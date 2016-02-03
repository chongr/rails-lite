require 'rack'

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  to_display = req.fullpath
  res['Content-Type'] = 'text/html'
  res.write("#{to_display}")
  res.finish
end

Rack::Server.start(
  app: app,
  Port: 3000
)
