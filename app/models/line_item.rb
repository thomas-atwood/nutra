class LineItem < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :how_many, :supplement_id, :supplement_name, :price, :size
  belongs_to :order
end
