require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../fish')


class FishTest < MiniTest::Test

  def test_get_name
    @fish=Fish.new("Reginald")
    assert_equal("Reginald",@fish.name)

  end


end
