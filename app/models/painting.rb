class Painting < ActiveRecord::Base
  belongs_to :profile
  belongs_to :painting_category
  has_attached_file :image
  validates_attachment_content_type :image\
  , content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
  validates_presence_of :title
  scope :category_profile_list, -> { [Profile.list, PaintingCategory.list] }
  scope :date, -> { Date.today.strftime('%d%m%Y') }
  scope :set_ref_no, -> \
  { first ? ([date, last.id].join) : ([date, 1].join) }

  def self.paintings(id, profile_id)
    if profile_id
      where(painting_category_id: id, profile_id: profile_id)
    else
      where(painting_category_id: id)
    end
  end
end
