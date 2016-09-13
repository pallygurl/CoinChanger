require "minitest/autorun"
require_relative "coinchanger.rb"

class TestCoinChanger <Minitest::Test

	def test_if_you_aint_got_no_money_take_your_broke_ass_home
		coins = 0
		assert_equal({}, coinchanger(coins))
	end	
end









