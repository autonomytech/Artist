class PaintingCategory < ActiveRecord::Base
  validates_presence_of :name
  scope :list, -> { all.collect { |e| [e.name, e.id] } }
end
