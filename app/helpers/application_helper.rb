module ApplicationHelper
  def layout_for_user!
    if user_signed_in?
      render 'layouts/dashboard_pages'
    else
      render 'layouts/landing_pages'
    end
  end

  def is_active_controller(controller_name)
    params[:controller] == controller_name ? "active" : nil
  end

  def is_active_action(action_name)
    params[:action] == action_name ? "active" : nil
  end
end
