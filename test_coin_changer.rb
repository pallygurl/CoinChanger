require "minitest/autorun"
require_relative "coinchanger.rb"

class TestCoinChanger <Minitest::Test

	def test_if_you_aint_got_no_money_take_your_broke_ass_home	#zero coins returns an empty hash
		coins = 0
		assert_equal({}, coinchanger(coins))
	end	

	def test_give_a_penny_get_a_penny							#1 penny returns a hash (moolah) with 1 penny
		coins = 1
		assert_equal({:penny => 1}, coinchanger(coins))
	end

	def test_my_2_cents_worth
		coins = 2
		assert_equal({:penny => 2}, coinchanger(coins))
	end

	def test_nickleback
		coins = 5
		assert_equal({:nickle => 1}, coinchanger(coins))
	end	

	def test_stop_on_a_dime
		coins = 10
		assert_equal({:dime => 1}, coinchanger(coins))
	end	

	def test_11_without_7
		coins = 11
		assert_equal({:dime => 1, :penny => 1}, coinchanger(coins))
	end	

end