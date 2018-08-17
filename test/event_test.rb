require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test
  def setup
    @event = Event.new("Curling", [24, 30, 18, 20, 41])
  end

  def test_that_event_exists
    assert_instance_of Event, @event
  end

  def test_does_event_have_a_name?
    assert_equal "Curling", @event.name
  end

  def test_that_event_stores_ages
    assert_equal [24, 30, 18, 20, 41], @event.ages
  end

  def test_does_event_have_an_age_range?
    assert true, @event.ages.class == Array
  end

  def test_array_doesnt_include_Strings
    refute false, @event.ages.include?(String)
  end

  def test_event_returns_a_max_value
    assert_equal 41, @event.max_age
  end

  def test_event_returns_a_min_age
    assert_equal 18, @event.min_age
  end

  def test_average_age_returns_an_average_of_ages
    assert_equal 26.6, @event.average_age
  end

  def test_standard_deviation_returns_standard_deviation
    assert_equal 8.28, @event.standard_deviation
  end
end
