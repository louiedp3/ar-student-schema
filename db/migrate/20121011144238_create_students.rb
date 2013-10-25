require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |header|
      header.string :first_name
      header.string :last_name
      header.string :gender
      header.date   :birthday
      header.string :email
      header.string :phone
    end
    # HINT: checkout ActiveRecord::Migration.create_table
  end
end
