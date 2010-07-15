class ContenttypesController < ApplicationController
  def index
    @contenttypes = Contenttype.all
  end
  
  def show
    @contenttype = Contenttype.find(params[:id])
  end
  
  def new
    @contenttype = Contenttype.new
  end
  
  def create
    @contenttype = Contenttype.new(params[:contenttype])
    if @contenttype.save
      flash[:notice] = "Successfully created contenttype."
      redirect_to @contenttype
    else
      render :action => 'new'
    end
  end
  
  def edit
    @contenttype = Contenttype.find(params[:id])
  end
  
  def update
    @contenttype = Contenttype.find(params[:id])
    if @contenttype.update_attributes(params[:contenttype])
      flash[:notice] = "Successfully updated contenttype."
      redirect_to @contenttype
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @contenttype = Contenttype.find(params[:id])
    @contenttype.destroy
    flash[:notice] = "Successfully destroyed contenttype."
    redirect_to contenttypes_url
  end
end
