require 'minitest/autorun'
require 'minitest/pride'
require './lib/event.rb'

class EventTest < Minitest::Test

  def test_name
    event = Event.new("Curling", [32, 24, 18, 40, 42])
    assert_instance_of Event, event
  end

  def test_ages
    event = Event.new("Curling", [32, 24, 18, 40, 42])
    assert_instance_of Event, event
  end

  def test_max_age
    event = Event.new("Curling", [32, 24, 18, 40, 42])
    actual = event.max_age
    expected = 42
    assert_equal expected, actual
  end

  def test_min_age
    event = Event.new("Curling", [32, 24, 18, 40, 42])
    actual = event.min_age
    expected = 18
    assert_equal expected, actual
  end

  def test_average_age
    event = Event.new("Curling", [32, 24, 18, 40, 42])
    actual = event.average_age
    expected = 31.2
    assert_equal expected, actual
  end

  def test_standard_deviation_age
    event = Event.new("Curling", [32, 24, 18, 40, 42])
    actual = event.standard_deviation_age
    expected = 9.17
    assert_equal expected, actual
  end

end
