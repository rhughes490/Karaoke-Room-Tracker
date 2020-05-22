require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')


class TestRoom < Minitest::Test
    def setup

        @Song1 = Song.new(:Wonderwall)
        @Song2 = Song.new(:Gambler)
        @Song3 = Song.new(:Always)
        @Song4 = Song.new(:Imagine)
        @Room = Room.new("Room1", 10000)
    
    end

     def test_room_has_name()
         assert_equal("Room1", @Room.name())
     end

     def test_room_can_add_a_song
         @Room.add_a_song(@Song1)
         assert_equal(1, @Room.song_count())
     end

     def test_room_can_check_in_a_guest
        @Guest1 = Guest.new("Peter", 250)
        @Room.check_in_guest(@Guest1)
        assert_equal(1, @Room.guest_count())
    end

    def test_room_can_check_out_a_guest
        @Guest1 = Guest.new("Peter", 250)
        @Guest2 = Guest.new("Paul", 550)
        @Room.check_in_guest(@Guest1)
        @Room.check_in_guest(@Guest2)   
        @Room.check_out_guest(@Guest2)    
        assert_equal(1, @Room.guest_count())
    end

end