class ContentcategoriesController < ApplicationController
  def index
    @contentcategories = Contentcategory.all
  end
  
  def show
    @contentcategory = Contentcategory.find(params[:id])
  end
  
  def new
    @contentcategory = Contentcategory.new
  end
  
  def create
    @contentcategory = Contentcategory.new(params[:contentcategory])
    if @contentcategory.save
      flash[:notice] = "Successfully created contentcategory."
      redirect_to @contentcategory
    else
      render :action => 'new'
    end
  end
  
  def edit
    @contentcategory = Contentcategory.find(params[:id])
  end
  
  def update
    @contentcategory = Contentcategory.find(params[:id])
    if @contentcategory.update_attributes(params[:contentcategory])
      flash[:notice] = "Successfully updated contentcategory."
      redirect_to @contentcategory
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @contentcategory = Contentcategory.find(params[:id])
    @contentcategory.destroy
    flash[:notice] = "Successfully destroyed contentcategory."
    redirect_to contentcategories_url
  end
end
