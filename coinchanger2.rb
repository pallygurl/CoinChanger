def coinchanger(coins)

moolah = {}

num = 100
 money = {:dollar => num/1, :half_dollar => num/2, :quarter => num/4, :dime => num/10, :nickle => num/20, :penny => num/100}

money.each do |coin, till|
	  		if coins >= till
	  			moolah[coin] = coins / till  #coins received divided by the amount defined in the hash
	  	  		coins = coins % till			# coins received divided by the amount defined in the hash with remainder
	  										# need this for odd amounts to work properly
	  	end
end	  		
	moolah
end