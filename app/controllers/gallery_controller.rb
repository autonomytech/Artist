class GalleryController < ApplicationController
  skip_before_filter :authenticate_user!

  def index
    redirect_to dashboard_index_path if current_user
    @latest_paintings ||= Painting.latest_paintings
    @first_artist ||= Profile.first
    @last_artist ||= Profile.last
  end
end
