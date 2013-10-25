require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class UpdateStudents < ActiveRecord::Migration
  def change
    change_table :students do |header|
      header.remove   :birthday
      header.datetime :birthday
    end
    # HINT: checkout ActiveRecord::Migration.create_table
  end
end
