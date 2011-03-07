class GamesController < ApplicationController
  filter_resource_access
  
  
  before_filter :previous_page, :only => [:edit]
  before_filter :load_users, :only => [:new, :edit, :update]
  
  
  def new
    @game = Game.new
	respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @game }
    end
  end

  def create
    @game = Game.new(params[:game])
    if @game.save
      flash[:notice] = "Successfully created game."
      redirect_to games_url
    else
      render :action => 'new'
    end
  end

  def index
	@title = "Gamez"
	@number_games = Game.count
    @games = Game.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @games }
    end
  end
  
  
  def show
    @game = Game.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @game }
    end
  end
  
  def edit
    @game = Game.find(params[:id])
  end
  
  def update
    @game = Game.find(params[:id])

    respond_to do |format|
      if @game.update_attributes(params[:game])
        format.html { redirect_to(@game, :notice => 'Game was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @game.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    respond_to do |format|
      format.html { redirect_to(games_url) }
      format.xml  { head :ok }
    end
  end
  
  private
  
  def previous_page
	session[:redirect] = request.referer
  end
  
  def load_users
	@users = Game.all
  end
end
