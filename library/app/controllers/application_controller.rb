class ApplicationController < ActionController::Base
    before_action :restrict_unwanted_routes
    helper_method :current_user

    private

    def restrict_unwanted_routes
        unless allowed_path?
            render file: "#{Rails.root}/public/404.html", status: :not_found, layout: false
        end
    end

    def allowed_path?
        request.path == login_path || request.path == root_path
    end
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
end
