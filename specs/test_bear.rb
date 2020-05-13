require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup()

    @fish1 = Fish.new("Blinky")
    @fish2 = Fish.new("Horace")

    @fishes = [@fish1,@fish2]

    @river = River.new("Amazon", @fishes )
    @bear = Bear.new("Yogi","Grizzly")


  end


  def test_get_name
    assert_equal("Yogi",@bear.name)

  end


  def test_get_type
      assert_equal("Grizzly",@bear.type)

  end

  def test_roar
    assert_equal("raawr",@bear.roar)

  end

  def test_stomache_is_empty
    assert_equal([],@bear.stomache)

  end

  def test_take_fish
    @bear.take_fish(@river,"Horace")
    assert_equal([@fish2],@bear.stomache)
    assert_equal([@fish1],@river.fishes)


  end


  def test_food_count
    assert_equal(0,@bear.food_count)

  end


end
