README

Objectives of Singbot

1) When user enters "sing", Singbot will sing a line from a song.

2) When user enters "guess song", Singbot will sing a line and prompt user to guess the song name

= or =

When user enters "guess artist", Singbot will sing a line and prompt user to guess the artist name

** If 1 & 2 can be completed, then attempt 3
3) When user enters "guess lyrics", Singbot will sing a line and prompt user to guess a missing word from the song


************  Thought Process:  ************
1) Have a predfined set of songs & songnames/artist saved in a Hash
songHash = {
:b44 => "if you get down on me i'll get down on you",
:bsb => "i dont care, who you are, where you're from, don't care what you did, as long as you love me",
:nsync => "you're tearing up my heart when i'm with you, but when we are apart i feel it too"
}

2 methods:
def sing; end
def guess_artist; end
(if attempting # 3 ... def guess_lyrics; end)

Rough outline of methods:
create a key array (ex key_array = [])

a) 
def sing
	songHash.each_key do |key|    #actually, this can be a method in itself
		key_array << key
	end

	key_choice = key_array.sample   #randomly select a key
	puts songHash[key_choice]    #outputs the song lyrics corresponding to the key

end


def guess_artist
	if guessed_artist = key_choice
		puts "You's an artist matching master son!"
	else
		puts "You stink. You got it wrong!"
end

