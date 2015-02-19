class PersonalDetail < ActiveRecord::Base

  belongs_to :contact
  has_many :phones
  
end
