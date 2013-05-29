class AddGenderAndDobToDoctor < ActiveRecord::Migration
  def change
    add_column :doctors, :gender, :string
    add_column :doctors, :dob, :date
  end
end
