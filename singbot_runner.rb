class BotRunner

require "socket"

server = "chat.freenode.net"   #this tells us where the tcpsocket is connected to
port = "6667"
nick = "SingBot"
channel = "#bitmaker"


#opens a new socket with the correct port and server
irc_server = TCPSocket.open(server, port)
# print("addr: ", s.addr.join(":"), "\n")     #this stuff is not needed
# print("peer: ", s.peeraddr.join(":"), "\n")  #it's just white noise
irc_server.puts "USER SingBot 0 * SingBot"    #replace the two instances of "testing" with "nick" => "USER testing 0 * testing"  
irc_server.puts "NICK #{nick}"
irc_server.puts "JOIN #{channel}"
irc_server.puts "PRIVMSG #{channel} :Hello, is it me you're looking for?"   #automatically outputs the greeting "Hello from IRB Bot" upon start up

until irc_server.eof? do
  msg = irc_server.gets
  puts 
  puts msg    #this puts msg command outputs to terminals
  puts 


end


end
