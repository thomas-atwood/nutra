class DeleteNutraceuticalsTest < ActiveRecord::Migration
  def up
    drop_table "nutraceutical_test_results"
  end

  def down
  end
end
