class SupplementsController < ApplicationController
	
  def index
    gon.link = params[:response]

    @supplements = Supplement.all()
    @supplement = Supplement.find(1)
  end

  def show
    @supplement = Supplement.find(1)
  end

   def popup
    @supplement = Supplement(1)
  end
end
