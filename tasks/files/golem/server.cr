require "http/server"

def send_404(context)
  context.response.status_code = 404
end

def send_505(context)
  context.response.status_code = 500
end

HTTP_SERVER = HTTP::Server.new do |context|
  puts "[#{context.request.method.downcase}] #{context.request.resource}"

  send_404(context)
rescue
  send_505(context)
end

def start_server(port)
  address = HTTP_SERVER.bind_tcp port
  puts "Listening on http://#{address}"
  HTTP_SERVER.listen
end
