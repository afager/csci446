class Admin::AdminController < ApplicationController
  before_filter :require_user
  
  filter_access_to :all
  
  
  
  def index
	#@admin = Admin.new
  end

  #def create
	#@admin = Admin.new(params[:admin])
	#if @admin.save
	#	redirect_to root_url, :notice => "Registration Successful"
	#else
	#	render "new"
	#end
  #end
 protected
 
   def permission_denied
      flash[error]="You do not have permission to view this page!"
      respond.to do |format|
	    format.hmtl { redirect_to admin_root_url}
		format.xml {head :unauthorized}
		format.js {head :unauthorized}
	  #redirect_to root_url
	  end
   end  
  
end
