class Comment < ActiveRecord::Base
  belongs_to :blog
  validates :name, :email, :comment, presence: true
  scope :new_comment_list, -> \
  { where(is_readed: false).order(created_at: :desc) }
end
