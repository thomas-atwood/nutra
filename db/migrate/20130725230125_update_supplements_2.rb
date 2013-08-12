class UpdateSupplements2 < ActiveRecord::Migration
  def change
    drop_table :supplements
    create_table :supplements do |t|
      #t.integer :id  — supplied by default
      t.string  :bluespot_sku
      t.integer :tablet_size
      t.string  :table_size_uom # eg. mg for milligrams
      t.integer :brand_id       # usually brand=manufacturer
      t.string  :brand_line
      t.string  :brand_sku      # e.g., SP610
      t.string  :name           # e.g., Super EPA Pro
      t.boolean :multiple_sizes 
      t.integer :serving_size   # e.g., 2 [ implicitly tablets ]
      t.integer :servings_per_container
      t.decimal :price, :precision => 5, :scale => 2
      t.string  :image_thumbnail_URL
      t.string  :image_medium_URL
      t.text    :cart_description
      t.text    :full_description # in html markup
      t.text    :product_info
      t.text    :ingredients
      t.text    :warnings
    end
  end
end
