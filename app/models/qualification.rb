class Qualification < ActiveRecord::Base
  belongs_to :profile
  validates :year, numericality: { only_integer: true }\
  , length: { is: 4 }, allow_blank: true
end
