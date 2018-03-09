require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  # def setup
  # end

  # def test_restaurant_is_invalid_without_name
  #   # arrange
  #   my_restaurant = Restaurant.create(address: "123 King Street",
  #                     phone: "111 222 3333",
  #                     picture: "http://placebear.com/100/100",
  #                     description: "Delicious Food", opening_hour: 10,
  #                     closing_hour: 23)
  #
  #   # act
  #   expected = false
  #   is_my_restaurant_valid = my_restaurant.valid?
  #
  #   # assert
  #   assert_equal(expected, is_my_restaurant_valid)
  #
  # end
  def test_restaurant_is_invalid_without_name
    # arrange
    my_restaurant = Restaurant.new(address: "123 King Street",
                      phone: "111 222 3333",
                      picture: "http://placebear.com/100/100",
                      description: "Delicious Food", opening_hour: 10,
                      closing_hour: 23)

    # act
    expected = false
    is_my_restaurant_valid = my_restaurant.valid?

    # assert
    assert_equal(expected, is_my_restaurant_valid)

  end

  def test_restaurant_is_invalid_without_opening_hour
    # arrange
    chez_bitmaker = Restaurant.create(name: "Chez Bitmaker", closing_hour: 23)

    # act
    expected = false
    actual = chez_bitmaker.valid?

    # assert
    assert_equal(expected, actual)
  end

  def test_that_opening_hour_is_an_integer
    # arrange
    chez_bitmaker = Restaurant.create(name: "Chez Bitmaker", opening_hour: "hello", closing_hour: 23)

    # act
    expected = false
    actual = chez_bitmaker.valid?

    # assert
    assert_equal(expected, actual)
  end

  def test_restaurant_is_invalid_without_closing_hour
    skip
  end

  def test_restaurant_is_available_when_empty_during_opening_hours
    skip
  end

  def test_restaurant_is_available_when_under_capacity_during_opening_hours
    skip
  end

  def test_restaurant_is_available_later_same_day
    skip
  end

  def test_restaurant_is_unavailable_in_the_past
    skip
  end

  def test_restaurant_is_unavailable_when_full
    skip
  end

  def test_restaurant_is_unavailable_before_opening
    skip
  end

  def test_restaurant_is_available_at_opening
    skip
  end

  def test_restaurant_is_unavailable_at_closing_time
    skip
  end

  def test_restaurant_is_unavailable_past_closing_time
    skip
  end

end
