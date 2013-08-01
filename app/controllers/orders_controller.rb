class OrdersController < ApplicationController
def new
	@order
	if current_user != nil 
		if params[:order] = nil
			@order = current_user.orders.create
			date = Date.today.to_s
			@order.date = date
			program_number = 1
			current_user.programs.find_by_number(program_number).program_elements.all.each do |element|
				# morn = element.morning_dosage
				# lunch = element.lunch_dosage
				# noon = element.afternoon_dosage
				# dinner = element.dinner_dosage 
				# bed = element.bed_dosage
				# daily_dosage = morn + lunch + noon + dinner +bed

				@order.line_items.create(how_many: element.daily_dosage,
				supplement_id: 7,
				supplement_name: element.name,
				price: 50,
				size: 1)
			end
		else
			@order = current_user.orders.last
		end
	

		hash = {}
		line_items = @order.line_items.all
		line_items.length.times do |t|
			hash["#{t+1}:price"] = "#{line_items[t].price}"
			hash["#{t+1}:name"] = "#{line_items[t].supplement_name}"
			hash["#{t+1}:category"] = "neutra"
			hash["#{t+1}:quantity"] = "#{line_items[t].how_many}"


		end	

		response = HTTParty.post('https://wired-different.foxycart.com/cart',
			:query => hash
			)
		redirect_to "#{response.request.last_uri.to_s}"
	 else 
	 	redirect_to "/users/sign_in"
	 end
end

def line

end

end
