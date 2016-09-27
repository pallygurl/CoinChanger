require 'sinatra'
require_relative "coinchanger.rb"

get '/' do
	erb :getname
end	

post '/getname' do
	yourname = params[:user_name]
	redirect '/empty_pockets?users_name=' + yourname
end

get '/empty_pockets' do
	yourname = params[:users_name].capitalize
	erb :coinchanger, :locals => {:yourname => yourname}
end

post '/empty_pockets' do
	yourname = params[:user_name]
	cents = params[:cents]
	moolah = coinchanger(cents.to_i)
	
		"Okay #{yourname}, you have #{cents} cents. I'll give you #{cheddah}.You should have enough to go to Kanawha State Forest."	
end