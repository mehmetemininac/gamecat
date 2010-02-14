class MediatypesController < ApplicationController
  # GET /mediatypes
  # GET /mediatypes.xml
  def index
    @mediatypes = Mediatype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mediatypes }
    end
  end

  # GET /mediatypes/1
  # GET /mediatypes/1.xml
  def show
    @mediatype = Mediatype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mediatype }
    end
  end

  # GET /mediatypes/new
  # GET /mediatypes/new.xml
  def new
    @mediatype = Mediatype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mediatype }
    end
  end

  # GET /mediatypes/1/edit
  def edit
    @mediatype = Mediatype.find(params[:id])
  end

  # POST /mediatypes
  # POST /mediatypes.xml
  def create
    @mediatype = Mediatype.new(params[:mediatype])

    respond_to do |format|
      if @mediatype.save
        flash[:notice] = 'Mediatype was successfully created.'
        format.html { redirect_to(@mediatype) }
        format.xml  { render :xml => @mediatype, :status => :created, :location => @mediatype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mediatype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mediatypes/1
  # PUT /mediatypes/1.xml
  def update
    @mediatype = Mediatype.find(params[:id])

    respond_to do |format|
      if @mediatype.update_attributes(params[:mediatype])
        flash[:notice] = 'Mediatype was successfully updated.'
        format.html { redirect_to(@mediatype) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mediatype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mediatypes/1
  # DELETE /mediatypes/1.xml
  def destroy
    @mediatype = Mediatype.find(params[:id])
    @mediatype.destroy

    respond_to do |format|
      format.html { redirect_to(mediatypes_url) }
      format.xml  { head :ok }
    end
  end
end
