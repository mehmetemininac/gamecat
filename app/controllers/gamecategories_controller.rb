class GamecategoriesController < ApplicationController
  # GET /gamecategories
  # GET /gamecategories.xml
  def index
    @gamecategories = Gamecategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gamecategories }
    end
  end

  # GET /gamecategories/1
  # GET /gamecategories/1.xml
  def show
    @gamecategory = Gamecategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gamecategory }
    end
  end

  # GET /gamecategories/new
  # GET /gamecategories/new.xml
  def new
    @gamecategory = Gamecategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gamecategory }
    end
  end

  # GET /gamecategories/1/edit
  def edit
    @gamecategory = Gamecategory.find(params[:id])
  end

  # POST /gamecategories
  # POST /gamecategories.xml
  def create
    @gamecategory = Gamecategory.new(params[:gamecategory])

    respond_to do |format|
      if @gamecategory.save
        flash[:notice] = 'Gamecategory was successfully created.'
        format.html { redirect_to(@gamecategory) }
        format.xml  { render :xml => @gamecategory, :status => :created, :location => @gamecategory }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gamecategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gamecategories/1
  # PUT /gamecategories/1.xml
  def update
    @gamecategory = Gamecategory.find(params[:id])

    respond_to do |format|
      if @gamecategory.update_attributes(params[:gamecategory])
        flash[:notice] = 'Gamecategory was successfully updated.'
        format.html { redirect_to(@gamecategory) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gamecategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gamecategories/1
  # DELETE /gamecategories/1.xml
  def destroy
    @gamecategory = Gamecategory.find(params[:id])
    @gamecategory.destroy

    respond_to do |format|
      format.html { redirect_to(gamecategories_url) }
      format.xml  { head :ok }
    end
  end
end
