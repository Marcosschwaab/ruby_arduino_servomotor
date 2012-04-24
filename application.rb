# vamos adigionar as gens que vamos utilizar
%w[rubygems sinatra haml serialport].each{ |gem| require gem }
 
# parametros da serialport
port_str = "/dev/cu.usbmodem621"  #
baud_rate = 9600
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE

sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)

get '/' do
  haml :index
end

post '/envia' do
  command = params[:cmd]
  sp.write(command +"\r\n")
end


