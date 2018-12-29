class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.authenticate(params)
    user = User.find_by email: params[:email]
    if user.present? && user.password_valid?(params[:password])
      user
    else
      nil
    end
  end

  def password_valid?(input_password)
    password == input_password
  end

end