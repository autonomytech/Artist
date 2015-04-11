class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :omniauthable, :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :timeoutable
  validate :password_complexity

  def password_complexity
    return unless password.present? \
    && !password.match(/(?=.*\d)(?=.*\W)(?=.*[a-z])/)
    errors.add :password, 'must include at least one letter,
    and one digit, and one special character'
  end
end
