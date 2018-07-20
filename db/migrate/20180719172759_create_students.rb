# Created by Bin Chen 7/19/18
class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :dot_number
      t.string :email

      t.timestamps
    end
  end
end
