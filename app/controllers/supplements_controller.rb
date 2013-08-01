class SupplementsController < ApplicationController
  def order
  end

  def index
    @supplements = Supplement.all()

    anOrder = nil
    params.keys.each do |v|
    	supp = Supplement.find_by_bluespot_sku(v)
    	if params[v] != "" && supp != nil
    		if @order == nil
    			@order = current_user.orders.create
    		end
    		anOrder = @order.line_items.create(how_many: params[v], supplement_id: v, supplement_name: supp.name, price: supp.price, size: 1)
    		
    	end

    end
    if anOrder != nil
    	anOrder = nil
    	redirect_to :controller => 'orders', :action  => 'new', :params => {order: @order}
    end

    params = nil
    @order = nil

  end

  def show
    @supplement = Supplement.find(1)
  end
end
