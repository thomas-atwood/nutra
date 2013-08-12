class UpdateSupplements5 < ActiveRecord::Migration
  drop_table :supplements
   create_table :supplements do |t|
     #t.integer :id  — supplied by default
     t.string  :bluespot_sku
     t.integer :tablet_size
     t.string  :tablet_size_uom   # eg. mg for milligrams
     t.integer :brand_id          # usually brand=manufacturer
     t.string  :brand_line
     t.string  :brand_sku         # e.g., SP610
     t.string  :name              # e.g., Super EPA Pro
     t.boolean :multiple_sizes 
     t.string  :serving_size      # e.g., 2, 2-3, ... 
     t.integer :tablets_per_container
     t.decimal :price, :precision => 5, :scale => 2
     t.string  :image_thumbnail_URL
     t.string  :image_medium_URL
     t.text    :cart_description  # in html markup
     t.text    :full_description  # in html markup
     t.text    :product_info      # in html markup
     t.text    :ingredients       # in html markup
     t.text    :warnings          # in html markup
   end
end
