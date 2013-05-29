class AddDoctorToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :doctor_id, :integer
  end
end
