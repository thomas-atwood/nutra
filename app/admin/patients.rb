ActiveAdmin.register Patient do
  index do
        column :first_name  
        column :last_name
        column :sex
        column :age
        column :practitioner
        default_actions
    end
    
    filter :last_name
    filter :first_name
    filter :practitioner
    filter :on_medication_for_depression
    filter :on_medication_for_anxiety
    filter :on_medication_for_add_adhd
 
end
