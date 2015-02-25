class Contact < ActiveRecord::Base

  belongs_to :user
  has_one :personal_detail
  has_one :office_detail

  scope :alphabetically, lambda{("contacts.full_name ASC")}
  
  def full_name
    [first_name, last_name].join(" ")
  end
  
end
