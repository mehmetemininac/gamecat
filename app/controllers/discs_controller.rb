class DiscsController < ApplicationController
  authorize_resource
  skip_authorize_resource :only => [:seearch]


  def index

    @discs = Disc.paginate :page => params[:page], :per_page => 20
  end

  def show
    @disc = Disc.find(params[:id])
  end

  def new
    last_disc = Disc.last
    if last_disc
      last_number = last_disc.number.to_i + 1
    else
      last_number = 1
    end
    @disc = Disc.new(:number => last_number.to_s)
  end

  def create
    @disc = Disc.new(params[:disc])
    if @disc.save
      flash[:notice] = "Successfully created disc."
      redirect_to new_disc_path
    else
      render :action => 'new'
    end
  end
  def edit
    @disc = Disc.find(params[:id])
  end

  def update
    @disc = Disc.find(params[:id])
    if @disc.update_attributes(params[:disc])
      flash[:notice] = "Successfully updated disc."
      redirect_to discs_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @disc = Disc.find(params[:id])
    @disc.destroy
    flash[:notice] = "Successfully destroyed disc."
    redirect_to discs_url
  end

  def search
    if request.post?
      @discs = Disc.with_query(params[:query]).paginate(:page => params[:page], :per_page => 20)
    end
  end

end
