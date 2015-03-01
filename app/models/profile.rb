class Profile < ActiveRecord::Base
  scope :list, -> { all.collect { |e| [e.name, e.id] } }
end
