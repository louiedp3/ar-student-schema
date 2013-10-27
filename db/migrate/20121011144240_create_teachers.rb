require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |header|
      header.string :name
      header.string :email
      header.string :phone
    end
    # HINT: checkout ActiveRecord::Migration.create_table
  end
end
