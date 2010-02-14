class ContainertypesController < ApplicationController
  # GET /containertypes
  # GET /containertypes.xml
  def index
    @containertypes = Containertype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @containertypes }
    end
  end

  # GET /containertypes/1
  # GET /containertypes/1.xml
  def show
    @containertype = Containertype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @containertype }
    end
  end

  # GET /containertypes/new
  # GET /containertypes/new.xml
  def new
    @containertype = Containertype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @containertype }
    end
  end

  # GET /containertypes/1/edit
  def edit
    @containertype = Containertype.find(params[:id])
  end

  # POST /containertypes
  # POST /containertypes.xml
  def create
    @containertype = Containertype.new(params[:containertype])

    respond_to do |format|
      if @containertype.save
        flash[:notice] = 'Containertype was successfully created.'
        format.html { redirect_to(@containertype) }
        format.xml  { render :xml => @containertype, :status => :created, :location => @containertype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @containertype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /containertypes/1
  # PUT /containertypes/1.xml
  def update
    @containertype = Containertype.find(params[:id])

    respond_to do |format|
      if @containertype.update_attributes(params[:containertype])
        flash[:notice] = 'Containertype was successfully updated.'
        format.html { redirect_to(@containertype) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @containertype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /containertypes/1
  # DELETE /containertypes/1.xml
  def destroy
    @containertype = Containertype.find(params[:id])
    @containertype.destroy

    respond_to do |format|
      format.html { redirect_to(containertypes_url) }
      format.xml  { head :ok }
    end
  end
end
