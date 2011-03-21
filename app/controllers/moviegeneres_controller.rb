class MoviegeneresController < ApplicationController
  before_filter :authenticate_user!
  authorize_resource

  def index
    @moviegeneres = Moviegenere.all
  end

  def show
    @moviegenere = Moviegenere.find(params[:id])
  end

  def new
    @moviegenere = Moviegenere.new
  end

  def create
    @moviegenere = Moviegenere.new(params[:moviegenere])
    if @moviegenere.save
      flash[:notice] = "Successfully created moviegenere."
      redirect_to @moviegenere
    else
      render :action => 'new'
    end
  end

  def edit
    @moviegenere = Moviegenere.find(params[:id])
  end

  def update
    @moviegenere = Moviegenere.find(params[:id])
    if @moviegenere.update_attributes(params[:moviegenere])
      flash[:notice] = "Successfully updated moviegenere."
      redirect_to @moviegenere
    else
      render :action => 'edit'
    end
  end

  def destroy
    @moviegenere = Moviegenere.find(params[:id])
    @moviegenere.destroy
    flash[:notice] = "Successfully destroyed moviegenere."
    redirect_to moviegeneres_url
  end
end
