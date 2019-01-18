class User < ApplicationRecord

  belongs_to :expedition, optional: true

  before_create :generate_token

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: %i[cosm comm]        

  # def self.authenticate(params)
  #   user = User.find_by email: params[:email]
  #   if user.present? && user.password_valid?(params[:password])
  #     user
  #   else
  #     nil
  #   end
  # end

  # def password_valid?(input_password)
  #   password == input_password
  # end

  private

  def generate_token
    self.auth_token = Devise.friendly_token 8
  end

end
