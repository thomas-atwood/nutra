class UpdatePrograms02 < ActiveRecord::Migration
   def change
  	drop_table :programs
    create_table :programs do |t|
    	#t.integer :id — generated by default
    	t.integer :patient_id # now 1:1 for 'current' program; change to 1:m for current, previous, ... 
    	t.integer :practioner_id
    	t.date    :date_prescribed
    	t.date    :date_began
    	t.date    :date_superceded # with a revised program; need link
    	t.date    :date_ended 
      t.string  :condition # either enumerated list or reference
    	t.string  :description # clinicians's notes
    	
    end
	end
end
