class ApplicationController < ActionController::Base

  protect_from_forgery
  include SessionsHelper

  # Comment those out if ActiveRecord debugging is needed
  rescue_from ActiveRecord::RecordInvalid, 
              ActiveRecord::RecordNotFound,
              ActionController::RoutingError,
              ActionController::UnknownController,
              ActionController::UnknownAction, :with => :render_404

  def render_404
    redirect_to not_found_path
  end
end
