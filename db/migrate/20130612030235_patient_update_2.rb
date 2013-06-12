class PatientUpdate2 < ActiveRecord::Migration
  def change
    drop_table :patients
    create_table :patients do |t|
      t.string  :type # mother, father, child
      t.string  :salutation # Mr. Ms. Mrs. Dr. 
      t.string  :first_name
      t.string  :last_name
      t.string  :contact_preference
      t.string  :phone
      t.integer :when_to_call
      t.string  :email
      t.string  :skype
      t.string  :problems # mood, anxiety, stress, memory, headache, sleep, weight_loss, eating_disorder, focus
      t.string  :diagnoses #add_or_adhd, autism_asperbersgers_or_pdd, bipolar, schizophrenia
      t.string  :medications # anxiety, depression, chronic_pain, add_adhd, other_brain
    end
  end
end
