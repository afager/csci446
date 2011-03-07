# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  #include Authentication
  helper :all # include all helpers, all the time
  filter_parameter_logging :password
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  #before_filter{|c|Authorization.current_user=c.current_user}
  helper_method :current_user_session, :current_user
  
  
  protected
   def set_current_user
     Authorization.current_user = current_user
   end  
   def permission_denied
      flash[error]="You do not have permission to view this page!"
      redirect_to root_url
   end
   
   private
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
	  return @current_user_session
    end
    
    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.record
	  return @current_user
	end

    def require_user
      unless current_user
        flash[:notice] = "You must log in to access this page"
        redirect_to login_url
        return false
      end
    end

    def require_no_user
      if current_user
        flash[:notice] = "You must log out to access this page"
        redirect_to root_url
        return false
      end
    end
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
