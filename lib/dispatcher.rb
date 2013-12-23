require 'eventmachine'

class Dispatcher < EM::Connection
  def receive_data(data)
    send_data(data)
  end
end

