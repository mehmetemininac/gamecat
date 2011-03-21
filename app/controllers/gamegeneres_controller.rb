class GamegeneresController < ApplicationController
  before_filter :authenticate_user!
  authorize_resource

  def index
    @gamegeneres = Gamegenere.all
  end

  def show
    @gamegenere = Gamegenere.find(params[:id])
  end

  def new
    @gamegenere = Gamegenere.new
  end

  def create
    @gamegenere = Gamegenere.new(params[:gamegenere])
    if @gamegenere.save
      flash[:notice] = "Successfully created gamegenere."
      redirect_to @gamegenere
    else
      render :action => 'new'
    end
  end

  def edit
    @gamegenere = Gamegenere.find(params[:id])
  end

  def update
    @gamegenere = Gamegenere.find(params[:id])
    if @gamegenere.update_attributes(params[:gamegenere])
      flash[:notice] = "Successfully updated gamegenere."
      redirect_to @gamegenere
    else
      render :action => 'edit'
    end
  end

  def destroy
    @gamegenere = Gamegenere.find(params[:id])
    @gamegenere.destroy
    flash[:notice] = "Successfully destroyed gamegenere."
    redirect_to gamegeneres_url
  end
end
