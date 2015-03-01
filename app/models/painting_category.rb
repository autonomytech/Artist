class PaintingCategory < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 5 }, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  scope :list, -> { all.collect { |e| [e.name, e.id] } }
end
