class Home < ActiveRecord::Base
  has_many :children, dependent: :destroy

  def to_s
    name
  end
end
