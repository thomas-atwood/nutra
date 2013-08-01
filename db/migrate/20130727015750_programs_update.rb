class ProgramsUpdate < ActiveRecord::Migration
    def change
  	drop_table :programs
    create_table :programs do |t|
    	t.integer :number
    	t.string :description
    	t.integer :user_id
    end
	end
end
