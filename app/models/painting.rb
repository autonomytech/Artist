class Painting < ActiveRecord::Base
  belongs_to :profile
  has_attached_file :image
  validates_attachment_content_type :image\
  , content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
  validates_presence_of :title, :profile_id, :painting_category_id, :status
  scope :category_profile_list, -> { [Profile.list, PaintingCategory.list] }
  scope :date, -> { Date.today.strftime('%d%m%Y') }
  scope :set_ref_no, -> \
  { first ? ([date, last.id].join) : ([date, 1].join) }
end
