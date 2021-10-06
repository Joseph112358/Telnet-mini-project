require 'socket'
they_said = nil
server = TCPServer.new(2345)

socket = server.accept
while they_said != "end transmission" do
socket.puts "What do you say?"

they_said = socket.gets.chomp

socket.puts "You said: #{they_said}."
end

socket.puts "over and out!"

socket.close