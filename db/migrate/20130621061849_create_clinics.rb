class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string  :name
      t.string  :address
      t.string  :address2
      t.string  :city
      t.string  :state # 2 character state code
      t.string  :country # 3 character ISO country code
      t.string  :zip # 5 numeric character zip code
      t.string  :main_phone
      # relationships
      t.integer :clinic_group

    end
  end
end
