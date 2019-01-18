module Api::V2

  class UsersController < ApiController

    skip_before_action :rest_auth

    def singin
    #   user = User.find_by(email: email)

    #   if user&.valid_password?(password)
    #     render json: user.auth_token
    #   else
    #     renser json: { error: 'Invalid email or password' }
    #   end
      user = User.find_by email: params[:email]
      if user.present? && user.valid_password?(params[:password])
        render json: user.auth_token
      else
        render json: { error: 'Invalid email or password' }
      end

    end

  end

end
