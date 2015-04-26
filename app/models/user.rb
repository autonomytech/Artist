class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :timeoutable, :confirmable
  validate :password_complexity

  def password_complexity
    return unless password.present? \
    && !password.match(/(?=.*\d)(?=.*\W)(?=.*[A-Za-z])/)
    errors.add :password, 'must include at least one letter,
    and one digit, and one special character'
  end
end
