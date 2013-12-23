require_relative 'spec_helper'

describe 'Dispatcher' do
  context 'receive data' do
    subject(:server) {EM.open_datagram_socket('127.0.0.1', 6767, Dispatcher)}
    let(:data) { 'test data' }
    it 'send received data back' do
      server.should_receive(:send_data).with(data)
      server.receive_data(data)
    end
  end
end
