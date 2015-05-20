require 'sinatra'
require 'json'
module CoffeeNow
	class CoffeeNowApp < Sinatra::Application	
	  get '/' do
		content_type :json
		set_number_of_cups(99)
		{ cups_ordered: get_order_status }.to_json
	  end
	  def set_number_of_cups(cups)
	  	@cups = cups
	  end
	 
	  def get_order_status()
	  	@cups
	  end
	end
end

