class Achievement < ActiveRecord::Base
  belongs_to :profile
  validate :valid_date?

  def valid_date?
    return unless date.present?
    return unless date > Date.today
    errors.add(:date, 'is invalid')
  end
end
