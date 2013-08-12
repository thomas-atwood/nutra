class CreateSupplements < ActiveRecord::Migration
  def change
    create_table :supplements do |t|
      t.string :name
      t.string :brand
      t.decimal :price, precision: 5, scale: 2 
      t.integer :dose # e.g., 200
      t.string  :dose_unit_of_measure # eg. milligrams
      t.string  :per # e.g., 'pill', 'tablespoon', ... 
    end
  end
end
