class Member::UsersController < Member::MembersController

 before_filter :previous_page, :only => [:edit]
  def new
	@user = User.new
  end

  def create
	@user = User.new(params[:user])
	if @user.save
		redirect_to member_root_url, :notice => "Registration Successful"
	else
		render "new"
	end
  end
  
  def login
	@user = User.new
    @user = User.all

    respond_to do |format|
      format.html # index.html.haml
      format.xml  { render :xml => @users }
    end
  end
  
  
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

 # def destroy
  #  [:member,@user] = User.find(params[:id])
   # [:member,@user].destroy

    #respond_to do |format|
     # format.html { redirect_to(users_url) }
      #format.xml  { head :ok }
    #end
  #end
  #*/
  def edit
    @user = User.find(params[:id])
  end
  private
   
  def previous_page
	session[:redirect] = request.referer
  end
end
