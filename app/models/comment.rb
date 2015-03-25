class Comment < ActiveRecord::Base
  belongs_to :blog
  validates :name, :email, :comment, presence: true
end
