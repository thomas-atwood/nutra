class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string  :test_type
      t.string  :test_subtype
      t.decimal :normal_range_low
      t.decimal :normal_range_high
      t.decimal :result_value
      t.boolean :within_normal_range
      t.boolean :ok
      t.decimal :cost
    end
  end
end
