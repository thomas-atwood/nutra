class PatientsUpdate1 < ActiveRecord::Migration
  def change
    drop_table :patients
    create_table :patients do |t|
      t.string  :type # mother, father, child
      t.string  :salutation # Mr. Ms. Mrs. Dr. 
      t.string  :first_name
      t.string  :last_name
      t.integer :age
      t.integer :weight
      t.string  :sex # "F=female, M=male"

      t.boolean :issues_mood
      t.boolean :issues_anxiety
      t.boolean :issues_stress
      t.boolean :issues_memory
      t.boolean :issues_headache
      t.boolean :issues_sleep
      t.boolean :issues_weight_loss
      t.boolean :issues_eating_disorder
      t.boolean :issues_focus
      t.boolean :diagnosed_add_or_adhd
      t.boolean :diagnosed_autism_aspbersgers_or_pdd
      t.boolean :diagnosed_bipolar
      t.boolean :diagnosed_schizophrenia
      t.boolean :on_medication_for_anxiety
      t.boolean :on_medication_for_depression
      t.boolean :on_medication_for_chronic_pain
      t.boolean :on_medication_for_add_adhd
      t.boolean :on_medication_other_brain
    end
  end
end
