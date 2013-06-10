class Singbot
	attr_accessor :guessed_artist, :key_choice
	def initialize()
		@songHash = {
		:b44 => "if you get down on me i'll get down on you",
		:bsb => "i dont care, who you are, where you're from, don't care what you did, as long as you love me",
		:nsync => "you're tearing up my heart when i'm with you, but when we are apart i feel it too",
		:britney => "oh baby baby, how was i supposed to know",
		:christina => "i'm a genie in a bottle baby, come, come, come on and let me out"
		}
		
		@key_array = []
		@songHash.each_key {|key| @key_array << key}

	end


	def sing
		key_choice = @key_array.sample.to_sym   #randomly select a key
		@songHash[key_choice]    #outputs the song lyrics corresponding to the key
	end

	def guess_artist
		Singbot.new.sing


		# if @answer == key_choice.to_s
		# 	return true
		# else
		# 	return false
		# end
	end

# test = Singbot.new
# test.sing
# test.guess_artist

end