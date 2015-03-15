class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :omniauthable, :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :timeoutable, :lockable
end
