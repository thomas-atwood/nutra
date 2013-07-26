class CreateNuerotransmitterTestResults < ActiveRecord::Migration
  def change
    create_table :nuerotransmitter_test_results do |t|
      t.integer :patient_id
      t.string :patient_name
      t.string :date
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
