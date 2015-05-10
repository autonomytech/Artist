class PaintingCategory < ActiveRecord::Base
  has_many :paintings
  validates_presence_of :name
  validates_length_of :name, maximum: 50
  scope :list, -> { all.collect { |e| [e.name, e.id] } }

  def image(profile_id)
    return if paintings.blank?
    paintings.where(profile_id: profile_id).last.image
  end
end
