require 'sinatra'
require 'json'
module CoffeeNow
	class CoffeeNowApp < Sinatra::Application	
	  get '/' do
		content_type :json
		get_order_status
	  end

	  post '/order' do
	  	set_number_of_cups(params[:num_cups])
	  	set_name(params[:user_name])
	  	set_drink(params[:drink])
	  	get_order_status
	  end

	  def set_number_of_cups(cups)
	  	@cups = cups
	  end

	  def set_drink(drink)
	  	@drink = drink
	  end

	  def set_name(name)
	  	@name = name
	  end
	 
	  def get_order_status()
	  	{ drink: @drink, name: @name }.to_json
	  end
	end
end

