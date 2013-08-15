ActiveAdmin.register Supplement do
   index do
         column :bluespot_sku  
         column :brand
         column :brand_line # why is FirstName and LastName still showing up?
         column :brand_sku
         column :name do |s|
           raw(s.name)
         end
         default_actions
     end
     
     filter :bluespot_sku
     filter :brand
     filter :brand_line
     filter :brand_sku
  
end
