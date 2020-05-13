require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../fish')
require_relative('../river')

class RiverTest < MiniTest::Test
  def setup
    @fish1 = Fish.new("Blinky")
    @fish2 = Fish.new("Horace")

    @fishes = [@fish1,@fish2]

    @river = River.new("Amazon", @fishes )

  end


  def test_get_name()
    assert_equal("Amazon",@river.name)

  end

  def test_get_fishes
    assert_equal([@fish1,@fish2],@river.fishes)


  end


  def test_fish_by_name
    found_fish=@river.fish_by_name("Horace")
    assert_equal("Horace",found_fish.name)


  end


  def test_remove_fish
    @river.remove_fish(@fish1)
    assert_equal([@fish2],@river.fishes)

  end




end
