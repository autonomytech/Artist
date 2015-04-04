class SessionsController < Devise::SessionsController
  layout :false
  before_action :sign_up, only: :new

  private

  def sign_up
    redirect_to new_user_registration_path unless User.first
  end
end
