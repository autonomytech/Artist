class Profile < ActiveRecord::Base
  has_many :paintings
  has_many :qualifications
  has_many :achievements
  has_attached_file :image
  has_many :addresses
  accepts_nested_attributes_for :addresses
  validates :first_name, :last_name, :email, :mobile_no, presence: true
  validates :mobile_no, numericality: { only_integer: true }\
  , length: { is: 10 }
  validates_attachment_content_type :image\
  , content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
  scope :list, -> { all.collect { |e| [e.full_name, e.id] } }

  def full_name
    [first_name.capitalize, last_name.capitalize].join(' ')
  end

  def categories
    categories = []
    paintings.each do |painting|
      categories << painting.painting_category
    end
    categories.uniq.compact
  end

  def self.artist_comment(id)
    profile = find(id)
    return profile.full_name, profile.email
  end

  def address
    add = addresses.last
    return unless add
    [add.street, add.city, add.state, add.pincode, add.country].join(',')
  end
end
