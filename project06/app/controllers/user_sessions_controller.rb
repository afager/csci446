class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy
  
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Successfully Logged in."
	  :access?
    else
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "Successfully Logged out."
    redirect_to root_url
  end
  def access?
      if User.find_by_username(@user_session.username).role.name == "admin"
         redirect_to admin_root_url
      else
         redirect_to member_root_url
      end
   end
end
