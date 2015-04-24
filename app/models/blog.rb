class Blog < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :profile
  has_attached_file :image
  validates :title, :content, presence: true
  validates_length_of :title, maximum: 50
  validates_attachment_content_type :image\
  , content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']

  def limited_content
    html = "#{content[0..85]}<br/>#{content[86..171]}<br/>#{content[172..257]}"
    html.html_safe
  end
end
