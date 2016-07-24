class Child < ActiveRecord::Base
  belongs_to :home
  has_many :reports
  has_many :attendances


  def authenticate(password)
    self.password == password
  end

  def self.search(string)
    results  = []
    results << Child.where("name LIKE ?", "%#{string}%")
    results << Home.where("name LIKE ?", "%#{string}%")
    results.flatten
  end
end
