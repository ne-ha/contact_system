class Contact < ActiveRecord::Base

  belongs_to :user
  has_one :personal_detail
  has_one :office_detail
  
end
