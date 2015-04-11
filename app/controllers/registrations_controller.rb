class RegistrationsController < Devise::RegistrationsController
  layout :false, only: [:new, :create]
  before_action :sign_up_check, only: :new

  private

  def sign_up_check
    redirect_to dashboard_index_path if User.first
  end

  def after_sign_up_path_for(*)
    dashboard_index_path
  end

  def after_update_path_for(*)
    dashboard_index_path
  end
end
