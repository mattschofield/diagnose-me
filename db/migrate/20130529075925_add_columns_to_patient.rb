class AddColumnsToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :gender, :string
    add_column :patients, :dob, :date
  end
end
