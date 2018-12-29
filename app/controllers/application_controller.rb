class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sing_in_path_for
    root_path
  end

  def after_sing_out_path_for
    root_path
  end

end
