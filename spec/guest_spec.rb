require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../guest.rb')
require_relative('../song.rb')
require_relative('../room.rb')



class TestGuest < Minitest::Test
    def setup()
         @Guest1 = Guest.new("Ronan", 500, :Wonderwall)
         @Guest2 = Guest.new("Janey", 1000, :Gambler)
         @Guest3 = Guest.new("John", 1500, :Always)

    end
   
      def test_guest_has_name()
          assert_equal("Ronan", @Guest1.name())
      end

       def test_guest_has_money()
           assert_equal(1500, @Guest3.wallet())
       end

      def test_reduce_money()
          @Guest1.take_from_wallet(500)
          assert_equal(0, @Guest1.wallet())
      end

    def test_if_favourite_song()
        @Guest1.favourite song
        assert_equal("Whoo!", @Guest1.check_favourite_song(:Wonderwall))
    end

end