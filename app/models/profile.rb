class Profile < ActiveRecord::Base
  has_many :paintings
  has_many :qualifications
  has_many :achievements
  has_attached_file :image
  validates :first_name, :last_name, :email, :mobile_no, presence: true
  validates_attachment_content_type :image\
  , content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
  scope :list, -> { all.collect { |e| [e.full_name, e.id] } }

  def full_name
    [first_name, last_name].join(' ')
  end

  def categories
    categories = []
    paintings.each do |painting|
      categories << painting.painting_category
    end
    categories.uniq
  end

  def self.artist_comment(id)
    profile = find(id)
    return profile.full_name, profile.email
  end
end
