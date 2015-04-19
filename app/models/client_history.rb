class ClientHistory < ActiveRecord::Base
  belongs_to :painting
  validates :name, :email, :mobile_no, :payment_status\
  , :painting_id, presence: true
  validates :mobile_no, numericality: { only_integer: true }\
  , length: { is: 10 }
end
