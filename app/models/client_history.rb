class ClientHistory < ActiveRecord::Base
  belongs_to :painting
  has_many :addresses
  validates :name, :email, :mobile_no, :payment_status\
  , :painting_id, presence: true
  validates :mobile_no, numericality: { only_integer: true }\
  , length: { is: 10 }
  accepts_nested_attributes_for :addresses

  def address
    add = addresses.last
    return unless add
    [add.street, add.city, add.state, add.pincode, add.country].join(',')
  end
end
