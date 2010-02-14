class ContenttypesController < ApplicationController
  # GET /contenttypes
  # GET /contenttypes.xml
  def index
    @contenttypes = Contenttype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contenttypes }
    end
  end

  # GET /contenttypes/1
  # GET /contenttypes/1.xml
  def show
    @contenttype = Contenttype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contenttype }
    end
  end

  # GET /contenttypes/new
  # GET /contenttypes/new.xml
  def new
    @contenttype = Contenttype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contenttype }
    end
  end

  # GET /contenttypes/1/edit
  def edit
    @contenttype = Contenttype.find(params[:id])
  end

  # POST /contenttypes
  # POST /contenttypes.xml
  def create
    @contenttype = Contenttype.new(params[:contenttype])

    respond_to do |format|
      if @contenttype.save
        flash[:notice] = 'Contenttype was successfully created.'
        format.html { redirect_to(@contenttype) }
        format.xml  { render :xml => @contenttype, :status => :created, :location => @contenttype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contenttype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contenttypes/1
  # PUT /contenttypes/1.xml
  def update
    @contenttype = Contenttype.find(params[:id])

    respond_to do |format|
      if @contenttype.update_attributes(params[:contenttype])
        flash[:notice] = 'Contenttype was successfully updated.'
        format.html { redirect_to(@contenttype) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contenttype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contenttypes/1
  # DELETE /contenttypes/1.xml
  def destroy
    @contenttype = Contenttype.find(params[:id])
    @contenttype.destroy

    respond_to do |format|
      format.html { redirect_to(contenttypes_url) }
      format.xml  { head :ok }
    end
  end
end
