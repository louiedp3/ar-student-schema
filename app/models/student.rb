require_relative '../../db/config'

class Student < ActiveRecord::Base

  validates :email, format: { with: /.+[@].+[.].{2,}/, message: "Invalid Email"}
  validates :age, numericality: { greater_than: 3}
  validates :phone, format: { with: /.*[\d]{3}.*[\d]{3}.*[\d]{4}.*/, message: "Invalid Phone Number"}
  validates :email, uniqueness: true


  def name
    "#{first_name} #{last_name}"
  end

  def age
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
  end
# implement your Student model here
end

class Teacher < ActiveRecord::Base

  validates :email, format: { with: /.+[@].+[.].{2,}/, message: "Invalid Email"}
  validates :email, uniqueness: true

end

