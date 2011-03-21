class DisctypesController < ApplicationController
  authorize_resource

  def index
    @disctypes = Disctype.all
  end

  def show
    @disctype = Disctype.find(params[:id])
  end

  def new
    @disctype = Disctype.new
  end

  def create
    @disctype = Disctype.new(params[:disctype])
    if @disctype.save
      flash[:notice] = "Successfully created disctype."
      redirect_to @disctype
    else
      render :action => 'new'
    end
  end

  def edit
    @disctype = Disctype.find(params[:id])
  end

  def update
    @disctype = Disctype.find(params[:id])
    if @disctype.update_attributes(params[:disctype])
      flash[:notice] = "Successfully updated disctype."
      redirect_to @disctype
    else
      render :action => 'edit'
    end
  end

  def destroy
    @disctype = Disctype.find(params[:id])
    @disctype.destroy
    flash[:notice] = "Successfully destroyed disctype."
    redirect_to disctypes_url
  end
end
