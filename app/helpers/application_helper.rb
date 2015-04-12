module ApplicationHelper
  def css_js_section!
    if user_signed_in?
      'application1'
    else
      'application'
    end
  end

  def layout_for_user!
    if user_signed_in?
      render 'layouts/inside_pages'
    else
      render 'layouts/outside_pages'
    end
  end

  def is_active_controller(controller_name)
    (params[:controller].eql? controller_name) ? 'active' : nil
  end

  def is_active_action(action_name)
    (params[:action].eql? action_name) ? 'active' : nil
  end

  def no_image_available(paintings)
    count = paintings.count
    if count.eql? ONE
      html = <<-HTML
      <td></td><td></td>
      HTML
    else
      html = <<-HTML
        <td></td>
        HTML
    end
    html.html_safe unless count.eql? THREE
  end

  def profile_id
    @profile ? @profile.id : ZERO
  end

  def painting_status(painting)
    case painting.status
    when 'Available'
      html = <<-HTML
        <i class="fa fa-circle text-navy"></i>
      HTML
    when 'Sold'
      html = <<-HTML
        <i class="fa fa-circle text-danger"></i>
      HTML
    when 'Hold'
      html = <<-HTML
        <i class="fa fa-circle text-default"></i>
      HTML
    when 'Reserved'
      html = <<-HTML
        <i class="fa fa-circle text-warning"></i>
      HTML
    end
    html ? html.html_safe : ''
  end

  def profies_count
    count = @profiles.count
    if count.eql? ZERO
      html = <<-HTML
        <td></td><td></td>
      HTML
    elsif count.eql? ONE
      html = <<-HTML
        <td></td>
      HTML
    else
      html = <<-HTML
      HTML
    end
    html.html_safe
  end
end
