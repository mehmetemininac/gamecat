class ContainersController < ApplicationController
  before_filter :authenticate_user!
  authorize_resource

  def index
    @containers = Container.all
  end

  def show
    @container = Container.find(params[:id])
  end

  def new
    @container = Container.new
  end

  def create
    @container = Container.new(params[:container])
    if @container.save
      flash[:notice] = "Successfully created container."
      redirect_to @container
    else
      render :action => 'new'
    end
  end

  def edit
    @container = Container.find(params[:id])
  end

  def update
    @container = Container.find(params[:id])
    if @container.update_attributes(params[:container])
      flash[:notice] = "Successfully updated container."
      redirect_to @container
    else
      render :action => 'edit'
    end
  end

  def destroy
    @container = Container.find(params[:id])
    @container.destroy
    flash[:notice] = "Successfully destroyed container."
    redirect_to containers_url
  end
end
