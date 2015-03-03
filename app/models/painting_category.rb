class PaintingCategory < ActiveRecord::Base
  validates_presence_of :name, :code
  scope :list, -> { all.collect { |e| [e.name, e.id] } }
end
