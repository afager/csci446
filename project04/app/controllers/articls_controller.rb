class ArticlsController < ApplicationController


before_filter :back_link, :only => [:edit]

	def back_link
		session[:redirect] = request.referer
	end
  # GET /articls
  # GET /articls.xml
  def index
    @articls = Articl.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articls }
    end
  end

  # GET /articls/1
  # GET /articls/1.xml
  def show
    @articl = Articl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @articl }
    end
  end

  # GET /articls/new
  # GET /articls/new.xml
  def new
    @articl = Articl.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @articl }
    end
  end

  # GET /articls/1/edit
  def edit
    @articl = Articl.find(params[:id])
  end

  # POST /articls
  # POST /articls.xml
  def create
    @articl = Articl.new(params[:articl])

    respond_to do |format|
      if @articl.save
        format.html { redirect_to(@articl, :success => 'Articl was successfully created.') }
        format.xml  { render :xml => @articl, :status => :created, :location => @articl }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @articl.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /articls/1
  # PUT /articls/1.xml
  def update
    @articl = Articl.find(params[:id])
     if @articl.update_attributes(params[:articl])
        redirect_to(session[:redirect], :success => 'Articl was successfully updated.')
        #format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @articl.errors, :status => :unprocessable_entity }
      end
    end
  

  # DELETE /articls/1
  # DELETE /articls/1.xml
  def destroy
    @articl = Articl.find(params[:id])
    @articl.destroy

    respond_to do |format|
      format.html { redirect_to(articls_url) }
      format.xml  { head :ok }
    end
  end
end


