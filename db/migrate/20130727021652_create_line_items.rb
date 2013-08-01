class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
    	t.integer :order_id
    	t.integer :how_many
    	t.integer :supplement_id
    	t.string	:supplement_name
    	t.decimal :price, :percision => 5, :scale => 2
    	t.integer :size

    end
  end
end
