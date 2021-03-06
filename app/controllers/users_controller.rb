class UsersController < ApplicationController
  before_filter :authenticate_user!
  authorize_resource

  def index
    @users = User.all
  end

  def show
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Successfully created user."
      redirect_to users_path
    else
      @user.password = ''
      @user.password_confirmation = ''
      render :action => 'new'
    end

  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated user."
      redirect_to @user
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "Successfully destroyed user."
    redirect_to users_url
  end

  def new
    @user = User.new
  end

end
