class CreateClinicGroups < ActiveRecord::Migration
  def change
    create_table :clinic_groups do |t|
      t.string  :name
      t.string  :contact_name
      t.string  :contact_phone
      t.string  :contact_email

    end
  end
end
