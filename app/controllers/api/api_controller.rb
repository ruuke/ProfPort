module Api

  class ApiController < ApplicationController
    include ActionController::HttpAuthentication::Token::ControllerMethods

    protect_from_forgery with: :null_session
    skip_before_action :authenticate_user!
    # before_action :rest_auth

    private

    def rest_auth
      result = authenticate_with_http_token do |token|
        User.find_by(auth_token: token).present?
      end
      render json: { error: 'Nepravilnii token' }, status: 403 unless result
    end

  end

end