module ApplicationHelper
  def stylesheet_javascript_section
    if user_signed_in?
      'application'
    else
      'vendor'
    end
  end

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

  def no_image_available(paintings)
    count = paintings.count
    if count == 1
      html = <<-HTML
        <td></td>
        <td></td>
        HTML
    else
      html = <<-HTML
        <td></td>
        HTML
    end
    html.html_safe unless count == 3
  end

  def profile_id
    @profile ? @profile.id : 0
  end

  def painting_status
    case @painting.status
    when 'available'
      html = <<-HTML
        <i class="fa fa-circle text-navy"></i>
      HTML
    when 'sold'
      html = <<-HTML
        <i class="fa fa-circle text-danger"></i>
      HTML
    when 'hold'
      html = <<-HTML
        <i class="fa fa-circle text-default"></i>
      HTML
    when 'reserved'
      html = <<-HTML
        <i class="fa fa-circle text-warning"></i>
      HTML
    end
    html ? html.html_safe : ''
  end
end
