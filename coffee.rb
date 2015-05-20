require 'sinatra'
require 'json'
module CoffeeNow
	class CoffeeNowApp < Sinatra::Application	
	  get '/' do
		content_type :json
		get_order_status
	  end

	  post '/order' do
	  	set_number_of_cups(:num_cups)
	  	set_name(:name)
	  end

	  def set_number_of_cups(cups)
	  	@cups = cups
	  end

	  def set_name(name)
	  	@name = name
	  end
	 
	  def get_order_status()
	  	{ cups_ordered: @cups, name: @name }.to_json
	  end
	end
end

