def coinchanger(coins)
		
	moolah={}
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