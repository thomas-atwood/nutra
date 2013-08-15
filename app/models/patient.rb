class Patient < ActiveRecord::Base
   # attr_accessible :title, :body
  attr_accessible *column_names # make all attributes accessible
  belongs_to :practitioner
  belongs_to  :client # ie is child of
  #has_one :e_profile # or is the data from this just folded into the patient record? no e_profile type now
  #has_one :d_profile # "..."
  has_one :program # no current way of modeling a set of programs that have changed over time; may need this for outcome tracking 
  has_many :test_suites
end