class CreateDiagnosisRequests < ActiveRecord::Migration
  def change
    create_table :diagnosis_requests do |t|

      t.timestamps
    end
  end
end
