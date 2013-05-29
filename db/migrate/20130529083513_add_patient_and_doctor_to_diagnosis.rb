class AddPatientAndDoctorToDiagnosis < ActiveRecord::Migration
  def change
    add_column :diagnoses, :patient_id, :integer
    add_column :diagnoses, :doctor_id, :integer
    add_column :diagnoses, :diagnosis_request_id, :integer
  end
end
