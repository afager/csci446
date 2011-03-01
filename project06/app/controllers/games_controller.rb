class GamesController < ApplicationController
  def new
    @game = Game.new
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
    @games = Game.all
  end
end
