class AddPatientToDiagnosisRequest < ActiveRecord::Migration
  def change
    add_column :diagnosis_requests, :patient_id, :integer
  end
end
