class Event < ActiveRecord::Base
  belongs_to :profile
  validates :title, :start_date, :end_date, :start_time, :end_time\
  , :profile_id, presence: true
  def publish?
    if publish == true
      'Publish'
    else
      'Not Publish'
    end
  end
end
