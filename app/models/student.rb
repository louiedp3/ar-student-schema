require_relative '../../db/config'

class Student < ActiveRecord::Base

  def name
    "#{first_name} #{last_name}"
  end

  def age
    now = Date.today
    age = now.year - @student.birthday.year - ((now.month > @student.birthday.month || (now.month == @student.birthday.month && now.day >= @student.birthday.day)) ? 0 : 1)
  end
# implement your Student model here
end