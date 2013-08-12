class Practitioner < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :patients
  has_many  :former_patients
  belongs_to  :clinic  # one; if need more ...
  belongs_to :association # one for now m:n eventually
  
  
end
