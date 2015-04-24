class Event < ActiveRecord::Base
  belongs_to :profile
  validates :title, :start_date, :end_date, :start_time, :end_time\
  , :profile_id, presence: true

  def artist
    profile.full_name if profile
  end

  def is_publish
    if publish
      'Publish'
    else
      'Not Publish'
    end
  end

  def s_time
    start_time.strftime('%I:%M %p')
  end

  def e_time
    end_time.strftime('%I:%M %p')
  end

  def s_date
    start_date.strftime('%d, %B %Y')
  end

  def e_date
    end_date.strftime('%d, %B %Y')
  end

  def self.today_events
    date = Date.today.to_date
    where('end_date >= ? AND start_date <= ?', date, date)
  end

  def self.upcoming_events
    date = Date.today.to_date
    where('start_date > ?', date).limit(10)
  end
end
