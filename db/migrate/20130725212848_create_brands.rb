class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name # e.g., 'Thorne'
    end
  end
end
