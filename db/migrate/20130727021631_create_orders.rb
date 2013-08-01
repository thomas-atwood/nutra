class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.integer	:user_id
    	t.string :date
    	t.integer :duration
    end
  end
end
