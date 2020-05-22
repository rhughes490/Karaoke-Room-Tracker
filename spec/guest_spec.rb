require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../guest.rb')
require_relative('../song.rb')
require_relative('../room.rb')



class TestGuest < Minitest::Test
    def setup()
        @Guest1 = Guest.new("Ronan", 500)
        @Guest2 = Guest.new("Janey", 1000)
        @Guest3 = Guest.new("John", 1500)
        # @Song1 = Song.new(:Wonderwall)
        # @Song2 = Song.new(:Gambler)
        # @Song3 = Song.new(:Always)
        # @Song4 = Song.new(:Imagine)
        # @room = Room.new("Room1", 10000, [@Song1, @Song2, @Song3, @Song4])
    end
   
     def test_guest_has_name()
         assert_equal("Ronan", @Guest1.name())
     end

      def test_guest_has_money()
          assert_equal(1500, @Guest3.wallet())
      end

    #  def test_reduce_money()
    #      @customer1.take_from_wallet(500)
    #      assert_equal(0, @customer1.wallet())
    #  end

    # def test_consume_drink__enough_money()
    #     @customer2.consume_drink(:Guinness, @pub)
    #     assert_equal(0, @customer2.wallet())
    #     assert_equal({:Carlsberg=>500, :Strongbow=>800, :Tennents_Super=>800}, @pub.drinks)
    #     assert_equal(11000, @pub.till)

    # end

    # def test_consume_drink__not_enough_money()
    #     @customer1.consume_drink(:Guinness, @pub)
    #     assert_equal(500, @customer1.wallet())
    #     assert_equal({:Carlsberg=>500, :Strongbow=>800, :Guinness=>1000, :Tennents_Super=>800}, @pub.drinks)
    #     assert_equal(10000, @pub.till)

    # end


end