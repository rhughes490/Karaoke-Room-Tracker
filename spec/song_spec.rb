require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../song.rb')

class TestSong < Minitest::Test

    def test_song_has_name
        song = Song.new(:Always)
        assert_equal(:Always, song.name)
    end

    #  def test_get_drink
    #     drink = Drink.new(:Carlsberg, 300)
    #     assert_equal({Carlsberg: 300}, drink.get_drink)
    #  end

end