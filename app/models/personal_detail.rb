class PersonalDetail < ActiveRecord::Base

  belongs_to :contact
  has_many :phones

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i 
  
  validates :email, :length => { :maximum => 100 },
                    :format => EMAIL_REGEX

end
