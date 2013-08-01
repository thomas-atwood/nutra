class ProgramElementsUpdate < ActiveRecord::Migration
    def change
    drop_table :program_elements
    create_table :program_elements do |t|
    	t.string :name
    	t.integer :daily_dosage
    	t.string :note
    	t.integer :morning_dosage
    	t.integer :lunch_dosage
    	t.integer :afternoon_dosage
    	t.integer :dinner_dosage
    	t.integer :bed_dosage
    	t.integer :program_id
    end
  end
end
