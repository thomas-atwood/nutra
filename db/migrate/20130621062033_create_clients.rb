class CreateClients < ActiveRecord::Migration
  
  def change
    create_table :clients do |t|
  
        t.string  :type # mother, father, child
        # name
        t.string  :salutation # Mr. Ms. Mrs. Dr. # NA for children 
        t.string  :first_name
        t.string  :last_name
        # address
        t.string  :street
        t.string  :suite
        t.string  :city
        t.string  :state
        t.string  :zip
        # contact info
        t.string  :work_phone
        t.string  :mobile_phone
        t.string  :email
        t.string  :skype
        # marketing info
        t.string   :referred_by
        t.string   :relationship # eg., friend, acquintance, family_member, doctor, clinician, ...

      end # end create_table do

  end # end change

end
