class ContentsController < ApplicationController
  before_filter :authenticate_user!
  authorize_resource

  def index
    @contents = Content.all
  end

  def show
    @content = Content.find(params[:id])
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(params[:content])
    if @content.save
      flash[:notice] = "Successfully created content."
      redirect_to new_content_path
    else
      render :action => 'new'
    end
  end

  def edit_discs
    @content = Content.find_by_id params[:id]
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    if @content.update_attributes(params[:content])
      flash[:notice] = "Successfully updated content."
      redirect_to @content
    else
      render :action => 'edit'
    end
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    flash[:notice] = "Successfully destroyed content."
    redirect_to contents_url
  end
end
