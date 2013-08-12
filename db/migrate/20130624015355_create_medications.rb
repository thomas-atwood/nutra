class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.integer :patient_id # foreign key of patient taking these medications 
      t.string  :name
      t.string  :dosage
      t.string  :intention
    end
  end
end
