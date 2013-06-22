class CreatePractitioners < ActiveRecord::Migration
  def change
    create_table :practitioners do |t|
      
      t.string :name
      t.string  :salutation
      t.string  :sex # values 'male', 'female'
      t.string  :street
      t.string  :suite
      t.string  :city
      t.string  :state
      t.string  :zip
      t.string  :office_main_phone
      t.string  :office_extension
      t.string  :office_direct
      t.string  :mobile
      t.string  :email
      t.string  :specialization
    
    
      t.string  :conditions # treats conditions
      t.string  :specialization
      t.boolean :can_order_tests
      t.boolean :can_prescribe_nutraceuticals
      t.boolean :can_prescribe_drugs

    end
  end
end
