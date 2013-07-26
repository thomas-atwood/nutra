class CreateNutraceuticalTestResults < ActiveRecord::Migration
  def change
    create_table :nutraceutical_test_results do |t|
      t.integer :patient_id
      t.string :patient_name
      t.date :date
      t.float :seratonin
      t.float :dopamine
      t.float :norepinephrine
      t.float :epinephrine
      t.float :ratio
      t.float :gaba
      t.float :histamine
      t.float :glutamate
      t.float :creatinine

    end
  end
end
