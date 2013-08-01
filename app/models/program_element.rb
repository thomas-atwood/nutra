class ProgramElement < ActiveRecord::Base
  attr_accessible :name, :note, :morning_dosage, :lunch_dosage, :afternoon_dosage, :dinner_dosage, :bed_dosage
  belongs_to :program

def daily_dosage 
	daily_dosage = 0
	[morning_dosage , lunch_dosage , afternoon_dosage , dinner_dosage , bed_dosage].each do |dosage|
		if dosage != nil
			daily_dosage += dosage
		end
	end
	return daily_dosage.to_i
end
end
