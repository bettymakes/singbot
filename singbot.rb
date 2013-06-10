class Singbot
	attr_accessor :guessed_artist, :key_choice
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

def guess_artist
	key_choice = @key_array.sample.to_sym 
	puts @songHash[key_choice]
	puts "guess artist now"
	guessed_artist = gets.chomp

	if guessed_artist == key_choice.to_s
		puts "Dayum gurllll! You're an artist-guessing-master!!"
	else
		puts "Yikes, you suck. Awkward Turtle ..."
	end
end

test = Singbot.new
test.sing
test.guess_artist

end