class Event < ActiveRecord::Base
  belongs_to :profile

  def publish?
    if publish == true
      'Publish'
    else
      'Not Publish'
    end
  end
end
