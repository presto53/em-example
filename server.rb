require 'eventmachine'
require_relative 'lib/dispatcher'

EM.run do
  EM.open_datagram_socket('127.0.0.1',6767,Dispatcher)
end
