class Room

    attr_reader :name, :till


    def initialize(name, till)
        @name = name
        @till = till
        @songs = []
        @guests = []
    end

    def number_of_songs
        return @songs.length
    end

    def song_count
        return @songs.count
    end

    def add_a_song(song_name)
        return @songs << song_name
    end

    def check_in_guest(guest_name)
            return @guests << guest_name
    end

    def guest_count
        if @guests.count < 4
            return @guests.count
        else 
            return "Too many guests!"
        end
    end

    def check_out_guest(guest_name)
             @guests.delete(guest_name)
    end

end