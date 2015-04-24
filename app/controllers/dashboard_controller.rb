class DashboardController < ApplicationController
  def index
    @comments ||= Comment.new_comment_list
    @today_events ||= Event.today_events
    @upcoming_events ||= Event.upcoming_events
    @blogs ||= Blog.order(created_at: :desc).limit(10)
    @count ||= Blog.all.count
  end
end
