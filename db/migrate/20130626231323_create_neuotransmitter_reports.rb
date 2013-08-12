class CreateNeuotransmitterReports < ActiveRecord::Migration
  def change
    create_table  :neuotransmitter_reports do |t|
      t.string    :doctorID           # always 103 (= Neuragistics)
      t.string    :doctor_name        # always 'Nerukogistics Corporation'
      t.date      :date_report_final  # meaning? format 5/24/2013  
      t.date      :date_lab_final     # meaning? 
      t.date      :date_received
      t.date      :date_collected
      t.string    :reportID           # even though all numeric eg. 10252
      t.string    :customerID         # 13 digit id defined by Pam
      t.string    :patient_last_name 
      t.string    :patient_first_name
      t.string    :patient_address    # empty
      t.string    :patient_dob        # format: 2/15/2000
      t.integer   :patient_age
      t.string    :patient_gender     # M=male F= femail
      t.float     :epinephrine_value
      t.float     :norepinephrine_value
      t.float     :dopamine_value
      t.float     :creatinine_value
      t.float     :seratonine_value
      t.float     :GABA_value
      t.float     :glutamate_value   
      t.float     :histamine_value
        # fields: last name, first name, address?, DOB (e.g., 2/15/2000), Age (e.g., 13), Gender (M/F)
      # put a set of Measurement objects in here, one per neurotransmitter: 
      # eg epinephrine, no-epiphenephrine, dopamine, creatinine, seortonin, GABA, Glutamate, Histamine
      # name/value pairs:  name_of_nurotransmitter, value 
    end
  end
end
