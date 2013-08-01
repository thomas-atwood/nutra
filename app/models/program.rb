class Program < ActiveRecord::Base
  attr_accessible :number, :description, :user_id
  belongs_to :user
  has_many :program_elements
end
