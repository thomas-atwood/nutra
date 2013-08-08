class OrdersController < ApplicationController
require "net/http"
require "uri"

def new
	if current_user != nil

		hash = {}
		if params[:order] != nil
			@order = Order.find(params[:order])
			line_items = @order.line_items.all
			line_items.length.times do |t|
				supp = Supplement.find_by_name(line_items[t].supplement_name)
				hash["#{t+1}:price"] = "#{line_items[t].price}"
				hash["#{t+1}:name"] = "#{line_items[t].supplement_name}"
				hash["#{t+1}:category"] = "neutra"
				hash["#{t+1}:quantity"] = "#{line_items[t].how_many}"
				if supp == nil
					hash["#{t+1}:description"] = "Item not entered in Supplement Database. This is a test description."
				else
					hash["#{t+1}:description"] = "#{supp.cart_description}"
				end
			end	
		end





		response = HTTParty.post('https://wired-different.foxycart.com/cart',
			:query => hash
			)
		url = "#{response.request.last_uri.to_s}"
		# debugger
		# x = 1

		# redirect_to "#{response.request.last_uri.to_s}"

		redirect_to :controller => params[:cont], :action  => params[:act], params:{response: url}

	 else 
	 	redirect_to "/users/sign_in"
	 end
end

# Should be presc_order but link is not working
def presc_order
	if current_user != nil
	 if current_user.programs.first != nil
	 		opts = params[:options]
			prog = opts[:program]
			program = current_user.programs.find(prog)

			length = params[:duration].match(/\d/)[0].to_i
			order = current_user.orders.create
			date = Date.today.to_s
			order.date = date
			program.program_elements.all.each do |element|
				supp = Supplement.find_by_name(element.name)
				bottleNum = orderSize(element.name, element.daily_dosage, length)
				order.line_items.create(how_many: bottleNum,
				supplement_id: 7,
				supplement_name: supp.name,
				price: supp.price,
				size: 1)
			end
			redirect_to :controller => 'orders', :action  => 'new', :params => {order: order, cont: 'evaluation', act: 'show'}
		else 
			redirect_to :controller => 'evaluation', :action  => 'show'
		end
	else
		redirect_to "/users/sign_in"
	end
end

def misc_order

	if current_user != nil 
		order = nil
	    params.keys.each do |v|
	      supp = Supplement.find_by_bluespot_sku(v)
	      if params[v] != "" && supp != nil
	        if order == nil
	          order = current_user.orders.create
	        end
	        anOrder = order.line_items.create(how_many: params[v], supplement_id: v, supplement_name: supp.name, price: supp.price, size: 1)   
	     end
	 end
	    redirect_to :controller => 'orders', :action  => 'new', :params => {order: order, cont: 'supplements', act: 'index'}
   else
   		redirect_to "/users/sign_in"
   end
end

def orderSize(name, dosage, months)
	supp = Supplement.find_by_name(name)
	if supp == nil
		bottleSize = 60
	else
		bottleSize = supp.tablets_per_container
	end

	orderSize = (dosage*30*months/(bottleSize).to_f).ceil

end

def line

end

def program
	if current_user != nil 
		program = current_user.programs.create
		program.description = "Jill: Methyl + will provide the necessary cofactor for norepinephrine to convert into epinephrine. Epinephrine plays a large role in energy, focus and cognition. I am hoping that the Methyl+ will help your conversion of norepi to epi. You may want to initially keep your PT Synergy at 2 capsules per day until the Methyl + has ben in place for a week or two. If you feel agitated or irritable on the full dose of PT Synergy, consider dropping it back to 1 capsule only in the a.m. Let me know if you have any questions."
		dosage = [nil,nil,nil,1,2,2,3]
		times = [4,4,5,5,5,6,6].sample
		times.times do
			supp = Supplement.all.sample
			program.program_elements.create(name: supp.name, morning_dosage: dosage.sample, lunch_dosage: dosage.sample, afternoon_dosage: dosage.sample, dinner_dosage: dosage.sample, bed_dosage: dosage.sample, )
		end
		redirect_to :controller => 'evaluation', :action  => 'show'
	else
		redirect_to "/users/sign_in"
	end
end

end
