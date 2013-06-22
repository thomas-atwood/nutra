class Patient < ActiveRecord::Base
   # attr_accessible :title, :body
  attr_accessible :first_name, :last_name, :age, :weight, :sex, :email, :clinician_code,
    :issues_mood, :issues_anxiety, :issues_stress, :issues_headache, :issues_sleep, :issues_weight_loss, :issues_eating_disorder, :issues_focus, 
    :diagnosed_add_or_adhd, :diagnosed_autism_aspbersgers_or_pdd, :diagnosed_bipolar, :diagnosed_schizophrenia, 
    :on_medication_for_anxiety, :on_medication_for_depression, :on_medication_for_chronic_pain, :on_medication_for_add_adhd, :on_medication_for_other_brain
  belongs_to :practitioner
  belongs_to  :client # ie is child of
  has_one :e_profile # or is the data from this just folded into the patient record? no e_profile type now
  has_one :d_profile # "..."
  has_one :program # no current way of modeling a set of programs that have changed over time; may need this for outcome tracking 

end
