module ApplicationHelper
  def layout_for_user!
    if user_signed_in?
      render 'layouts/dashboard_pages'
    else
      render 'layouts/landing_pages'
    end
  end
end
