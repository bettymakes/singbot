class BotRunner
	require_relative "singbot"
	require "socket"

attr_accessor :answer, :input

def guess_artist_answer
	string_array_orig = input.partition(":")
	string_array_new = string_array_orig[2].partition(":")
	@answer = string_array_new[2]
end

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
	  input = irc_server.gets
	  puts 
	  puts input    #this puts input command outputs to terminals
	  break if input.include?("exit me") #to exit
	  puts 

	  if input.include?("PRIVMSG #{channel} :singbot sing")
	  	irc_server.puts "PRIVMSG #{channel} :#{Singbot.new.sing}"
	  end

	  if input.include?("PRIVMSG #{channel} :guess artist")
	  	irc_server.puts "PRIVMSG #{channel} :#{Singbot.new.sing}"
	  		if input.include?("PRIVMSG #{channel} :#{Singbot.new.guess_artist}")
	  			irc_server.puts "PRIVMSG #{channel} :Dayum gurllll! You're an artist-guessing-master!!"
				else
					irc_server.puts "PRIVMSG #{channel} :Yikes, you suck. Awkward Turtle ..."
				end
		end
	end
end


