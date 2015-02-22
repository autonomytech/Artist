class RegistrationsController < Devise::RegistrationsController
  before_filter :sign_up_check, only: :new

  private

  def sign_up_check
    redirect_to home_index_path if User.first
  end

  def after_sign_up_path_for(*)
    dashboard_index_path
  end

  def after_update_path_for(*)
    dashboard_index_path
  end
end
