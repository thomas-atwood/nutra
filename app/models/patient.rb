class Patient < ActiveRecord::Base
  attr_accessible :issues_anxiety, :issues_eating_disorder, :issues_focus, :issues_headache, :issues_memory, :issues_mood, :issues_sleep, :issues_stress, :issues_weight_loss
end
