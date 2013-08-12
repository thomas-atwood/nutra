# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :patient do
    issues_mood false
    issues_anxiety false
    issues_stress false
    issues_memory false
    issues_headache false
    issues_sleep false
    issues_weight_loss false
    issues_eating_disorder false
    issues_focus false
  end
end
