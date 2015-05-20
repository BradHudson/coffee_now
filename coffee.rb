require 'sinatra'
require 'json'
module CoffeeNow
	class CoffeeNowApp < Sinatra::Application	
	  get '/' do
		content_type :json
		instance = CoffeeNow.new
		instance.set_number_of_cups(99)
		{ cups_ordered: instance.get_order_status }.to_json
	  end
	  def set_number_of_cups(cups)
	  	@cups = cups
	  end
	 
	  def get_order_status()
	  	@cups
	  end
	end
end

