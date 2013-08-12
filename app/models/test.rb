class Test < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to  :test_suite
end
