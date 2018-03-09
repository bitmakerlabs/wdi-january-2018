require 'minitest/autorun'
require 'minitest/pride'
require_relative 'temperature.rb'

class TestTemperature < MiniTest::Test
   # tests go in here
   def test_fah_to_cel_positive_temperature
     expected = 10
     actual = fah_to_cel(50)

     assert_equal(expected, actual)
   end

   def test_fah_to_cel_negative_temperature
     expected = -20
     actual = fah_to_cel(-4)

     assert_equal(expected, actual)
   end

   def test_cel_to_fah_positive
     expected = 50
     actual = cel_to_fah(10)

     assert_equal(expected, actual)
   end

   def test_cel_to_fah_negative
     expected = -4
     actual = cel_to_fah(-20)

     assert_equal(expected, actual)
   end
end





