=begin
Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

eg. if you have 11 cents you should return {:dime => 1, :penny => 1}; if you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1}.

Build up your coin_changer using tests. Commit to git after every test.
=end


def coinchanger(coins)
	moolah = {}
	
	  money = {:dollar => 100, :half_dollar => 50, :quarter => 25, :dime => 10, :nickle => 5, :penny => 1}

	  	money.each do |coin, till|
	  		if coins >= till
	  			moolah[coin] = coins / till  #coins received divided by the amount defined in the hash
	  		end
	  		coins = coins % till			# coins received divided by the amount defined in the hash with remainder
	  									# need this for penny/nickle to work properly
	  	end
	  		
moolah
 
end

def change(results)
	cheddah = " "
	results.each do |coin, till|
	coin = coin.to_s
		 cents = cents.to_s
		 if till > 1 && coin == "penny"
			coin = "pennies"
			# elsif amount == 1 && name == "penny"
			# 	name = "penny"
		elsif till > 1
			coin = coin.to_s + "s"
		else
			coin
		end
		cheddah << " " + till.to_s + "  " + coin + ", "
	end
	cheddah

end		