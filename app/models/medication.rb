class Medication < ActiveRecord::Base
  attr_accessible :dosage, :intention, :name
end
