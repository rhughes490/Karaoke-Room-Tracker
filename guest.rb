class Guest

    attr_reader :name, :wallet, :favourite_song
    
    def initialize(name, wallet, favourite_song)
        @name = name
        @wallet = wallet
        @favourite_song = favourite_song
    end

     def buy_a_song(money)
         @wallet -= money
    end

    def check_favourite_song(song_in_playlist)
                if @Guest.favourite_song == song_in_playlist
                    return "Whoo!"
                end
    end

end