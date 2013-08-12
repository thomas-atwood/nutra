class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      # symptomatic behavior
      t.text  :anxiety
      t.text  :academic_function
      t.text  :anger
      t.text  :attachment
      t.text  :depression
      t.text  :developmental_delays
      t.text  :family
      t.text  :focus
      t.text  :hyperactivity
      t.text  :hypervigilance
      t.text  :impulsivity
      t.text  :tantrums
      t.text  :self_injury
      t.text  :suicide
      t.text  :sleep
      t.text  :sensory_sensitivity
      t.text  :self_soothing
      t.text  :social_skills
      t.text  :trauma
      t.text  :other_symptoms
      # developmental and medical history
      t.text  :early_care
      t.text  :medical_history
      t.text  :interventions
      t.text  :food
      # function ratings 0=not problematic, 4-5-6-7 mildly problematic 10 severely problematic
      t.integer :rating_anxiety
      t.integer :rating_acting_out
      t.integer :rating_focus
      t.integer :rating_impulsivity
      t.integer :rating_energy_level
      t.integer :rating_mood
      t.integer :rating_sensory_sensitivity
      t.integer :rating_sleep
      t.integer :rating_stress
      t.integer :rating_tantrums
    end
  end
end
