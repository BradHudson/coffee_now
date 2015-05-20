require 'sinatra'
require 'json'

class CoffeeNow
  def set_number_of_cups(cups)
  	@cups = cups
  end
 
  def get_order_status()
  	@cups
  end
end


  get '/' do
  	"in the get function"
  content_type :json
  instance = CoffeeNow.new
  instance.set_number_of_cups(99)
  { cups_ordered: instance.get_order_status }.to_json
  end