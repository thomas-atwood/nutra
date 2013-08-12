class TestSuite < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :patient
end
