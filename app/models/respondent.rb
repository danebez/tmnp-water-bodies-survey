class Respondent < ActiveRecord::Base

  has_many :feedbacks

  attr_accessible :fullname,
                  :email

  validates :fullname, :email, :presence => true
  validates :fullname, :length => {:minimum => 4, :maximum => 30}
  validates :email, :length => {:maximum => 60}
  validates :fullname, :uniqueness => true

end