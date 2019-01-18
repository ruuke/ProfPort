class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  include Pundit

  rescue_from Pundit::NotAuthorizedError do
  	redirect_to root_path, alert: 'Недостаточно прав!'
  end

  def after_sing_in_path_for
    root_path
  end

  def after_sing_out_path_for
    root_path
  end

end
