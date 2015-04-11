class PaintingCategory < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, maximum: 50
  scope :list, -> { all.collect { |e| [e.name, e.id] } }
end
