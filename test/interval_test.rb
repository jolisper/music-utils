require 'test/unit'
require 'calc_interval'

class TestInterval < Test::Unit::TestCase
  def test_interval
    assert_equal 11, Interval.new('do', 'fa', 1).interval
    assert_equal 9, Interval.new('do', 're', 1).interval
    assert_equal 12, Interval.new('do', 'sol', 1).interval
    assert_equal 7, Interval.new('do', 'si', 0).interval
    assert_equal 4, Interval.new('si', 'mi', 0).interval
    assert_equal 7, Interval.new('si', 'la', 0).interval
    assert_equal 8, Interval.new('si', 'si', 0).interval
  end
end
