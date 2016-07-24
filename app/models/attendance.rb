class Attendance < ActiveRecord::Base
  belongs_to :child

  attr_accessor :password

  before_create :authenticate
  validate :check_duplicate

  def authenticate
    self.present = true if child.authenticate(self.password)
  end

  def check_duplicate
    return false if Attendance.find_by(child_id: self.child_id, date: Date.today)
  end
end
