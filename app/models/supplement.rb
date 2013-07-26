class Supplement < ActiveRecord::Base
  belongs_to :brand
  attr_accessible *column_names

end
