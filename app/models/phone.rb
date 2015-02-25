class Phone < ActiveRecord::Base

  belongs_to :office_detail
  belongs_to :personal_detail

  serialize :cell_phone
  serialize :landline

  validates :cell_phone, uniqueness: { scope: :contact_id}


end
