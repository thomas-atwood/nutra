class SupplementsController < ApplicationController
  def order
  end

  def list
  end

  def show
    @supplement = Supplement.find(1)
  end
end
