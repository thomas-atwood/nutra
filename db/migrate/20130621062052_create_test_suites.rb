class CreateTestSuites < ActiveRecord::Migration
  def change
    create_table :test_suites do |t|
      t.string  :test_suite_type
      t.string  :test_suite_subtype
      t.date    :date_samples_submitted
      t.integer :lab_send_to
      t.date    :date_processed
      t.date    :date_returned_to_blue_spot
      t.boolean :checked
      t.string  :checked_by_whom
      t.boolean :ok
      t.date    :date_returned_to_client
      t.date    :date_client_first_accessed_it 
      t.string  :return_to # patient or client

    end
  end
end
