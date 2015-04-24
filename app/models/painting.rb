class Painting < ActiveRecord::Base
  belongs_to :profile
  belongs_to :painting_category
  has_many :client_histories, dependent: :destroy
  has_attached_file :image
  validates :title, :profile_id, :painting_category_id\
  , :status, presence: true
  validates_attachment_content_type :image\
  , content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
  scope :category_profile_list, -> { [Profile.list, PaintingCategory.list] }
  scope :date, -> { Date.today.strftime('%d%m%Y') }
  scope :set_ref_no, -> \
  { first ? ([date, last.id.next].join) : ([date, ONE].join) }
  scope :list, -> { all.collect { |e| [e.title, e.id] } }

  def self.paintings(id, profile_id)
    if profile_id.eql? '0'
      where(painting_category_id: id)
    else
      where(painting_category_id: id, profile_id: profile_id)
    end
  end
end
