require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../guest.rb')
require_relative('../song.rb')
require_relative('../room.rb')
require_relative('../bar.rb')

class TestGuest < Minitest::Test

    def setup()
         @Bar1 = Bar.new("Nobles", 5000)

    end
   
    def test_bar_has_name()
        assert_equal("Nobles", @Bar1.name())
    end

    def test_bar_has_money()
        assert_equal(5000, @Bar1.till())
    end

    # def test_reduce_money()
    #     @Guest1.take_from_wallet(500)
    #     @bar
    #     assert_equal(0, @Guest1.wallet())
    # end
end