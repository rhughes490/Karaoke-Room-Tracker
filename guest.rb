class Guest

    attr_reader :name, :wallet, :favourite_song
    
    def initialize(name, wallet, favourite_song)
        @name = name
        @wallet = wallet
        @favourite_song = favourite_song
    end

     def take_from_wallet(money)
         @wallet -= money
    end

    def check_favourite_song(favourite_song)
            for song in favourite_songs
             if @Guest.favourite_song == favourite_song
                 return "Whoo!"
             end
    end

    # def consume_drink(drink_name, pub)
    #     price = pub.get_price_of_drink_by_name(drink_name)
    #     if price <= @wallet
    #         pub.make_purchase(drink_name)
    #         take_from_wallet(price)
    #     end


end