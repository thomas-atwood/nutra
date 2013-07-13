# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130626231323) do

  create_table "assessments", :force => true do |t|
    t.integer "client_id"
    t.integer "patient_id"
    t.string  "childs_name"
    t.string  "mothers_name"
    t.string  "fathers_name"
    t.date    "date_of_birth"
    t.string  "sex"
    t.integer "weight"
    t.integer "age_at_adoption"
    t.string  "country_adopted_from"
    t.string  "referral"
    t.date    "date"
    t.string  "reason_for_testing"
    t.text    "anxiety"
    t.text    "academic_function"
    t.text    "anger"
    t.text    "attachment"
    t.text    "depression"
    t.text    "developmental_delays"
    t.text    "family"
    t.text    "focus"
    t.text    "hyperactivity"
    t.text    "hypervigilance"
    t.text    "impulsivity"
    t.text    "tantrums"
    t.text    "self_injury"
    t.text    "suicide"
    t.text    "sleep"
    t.text    "sensory_sensitivity"
    t.text    "self_soothing"
    t.text    "social_skills"
    t.text    "trauma"
    t.text    "other_symptoms"
    t.text    "early_care"
    t.text    "medical_history"
    t.text    "digestive_health"
    t.text    "interventions"
    t.text    "food"
    t.integer "rating_anxiety"
    t.integer "rating_acting_out"
    t.integer "rating_focus"
    t.integer "rating_impulsivity"
    t.integer "rating_energy_level"
    t.integer "rating_mood"
    t.integer "rating_sensory_sensitivity"
    t.integer "rating_sleep"
    t.integer "rating_stress"
    t.integer "rating_tantrums"
  end

  create_table "clients", :force => true do |t|
    t.string "type"
    t.string "salutation"
    t.string "first_name"
    t.string "last_name"
    t.string "street"
    t.string "suite"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "work_phone"
    t.string "mobile_phone"
    t.string "email"
    t.string "skype"
    t.string "referred_by"
    t.string "relationship"
  end

  create_table "clinic_groups", :force => true do |t|
    t.string "name"
    t.string "contact_name"
    t.string "contact_phone"
    t.string "contact_email"
  end

  create_table "clinics", :force => true do |t|
    t.string  "name"
    t.string  "address"
    t.string  "address2"
    t.string  "city"
    t.string  "state"
    t.string  "country"
    t.string  "zip"
    t.string  "main_phone"
    t.integer "clinic_group"
  end

  create_table "medications", :force => true do |t|
    t.integer "patient_id"
    t.string  "name"
    t.string  "dosage"
    t.string  "intention"
  end

  create_table "neuotransmitter_reports", :force => true do |t|
    t.string  "doctorID"
    t.string  "doctor_name"
    t.date    "date_report_final"
    t.date    "date_lab_final"
    t.date    "date_received"
    t.date    "date_collected"
    t.string  "reportID"
    t.string  "customerID"
    t.string  "patient_last_name"
    t.string  "patient_first_name"
    t.string  "patient_address"
    t.string  "patient_dob"
    t.integer "patient_age"
    t.string  "patient_gender"
    t.float   "epinephrine_value"
    t.float   "norepinephrine_value"
    t.float   "dopamine_value"
    t.float   "creatinine_value"
    t.float   "seratonine_value"
    t.float   "GABA_value"
    t.float   "glutamate_value"
    t.float   "histamine_value"
  end

  create_table "patients", :force => true do |t|
    t.string  "type"
    t.string  "salutation"
    t.string  "first_name"
    t.string  "last_name"
    t.integer "age"
    t.integer "weight"
    t.string  "sex"
    t.string  "email"
    t.string  "clinician_code"
    t.boolean "issues_mood"
    t.boolean "issues_anxiety"
    t.boolean "issues_stress"
    t.boolean "issues_memory"
    t.boolean "issues_headache"
    t.boolean "issues_sleep"
    t.boolean "issues_weight_loss"
    t.boolean "issues_eating_disorder"
    t.boolean "issues_focus"
    t.boolean "diagnosed_add_or_adhd"
    t.boolean "diagnosed_autism_aspbersgers_or_pdd"
    t.boolean "diagnosed_bipolar"
    t.boolean "diagnosed_schizophrenia"
    t.boolean "on_medication_for_anxiety"
    t.boolean "on_medication_for_depression"
    t.boolean "on_medication_for_chronic_pain"
    t.boolean "on_medication_for_add_adhd"
    t.boolean "on_medication_other_brain"
  end

  create_table "practitioners", :force => true do |t|
    t.string  "name"
    t.string  "salutation"
    t.string  "sex"
    t.string  "street"
    t.string  "suite"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.string  "office_main_phone"
    t.string  "office_extension"
    t.string  "office_direct"
    t.string  "mobile"
    t.string  "email"
    t.string  "specialization"
    t.string  "conditions"
    t.boolean "can_order_tests"
    t.boolean "can_prescribe_nutraceuticals"
    t.boolean "can_prescribe_drugs"
  end

  create_table "program_elements", :force => true do |t|
  end

  create_table "programs", :force => true do |t|
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "test_suites", :force => true do |t|
    t.string  "test_suite_type"
    t.string  "test_suite_subtype"
    t.date    "date_samples_submitted"
    t.integer "lab_send_to"
    t.date    "date_processed"
    t.date    "date_returned_to_blue_spot"
    t.boolean "checked"
    t.string  "checked_by_whom"
    t.boolean "ok"
    t.date    "date_returned_to_client"
    t.date    "date_client_first_accessed_it"
    t.string  "return_to"
  end

  create_table "tests", :force => true do |t|
    t.string  "test_type"
    t.string  "test_subtype"
    t.decimal "normal_range_low"
    t.decimal "normal_range_high"
    t.decimal "result_value"
    t.boolean "within_normal_range"
    t.boolean "ok"
    t.decimal "cost"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
