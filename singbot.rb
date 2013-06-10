class Singbot

	def initialize()
		@songHash = {
		:b44 => "if you get down on me i'll get down on you",
		:bsb => "i dont care, who you are, where you're from, don't care what you did, as long as you love me",
		:nsync => "you're tearing up my heart when i'm with you, but when we are apart i feel it too"
		}
		
		@key_array = []
		@songHash.each_key {|key| @key_array << key}

	end


	

def sing
	key_choice = @key_array.sample.to_sym   #randomly select a key
	puts @songHash[key_choice]    #outputs the song lyrics corresponding to the key
end


end

test = Singbot.new
test.sing

