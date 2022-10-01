class TruckbyController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :index]
  def index
    @truckby = Truckby.all
  end

  def show
    @truckby = Truckby.find(params[:id])
  end

  def new
  end

  def create
    @truckby = Truckby.new(truckby_params)
    if @truckby.save
      redirect_to @truckby
    else
      render action: 'new'
    end
end

def edit
  @truckby = Truckby.find(params[:id])
end


def update
  @truckby = Truckby.find(params[:id])
  if @truckby.update(track_params)
    redirect_to @truckby
  else
    render action: 'edit'
  end
end

def destroy
  @truckby = Truckby.find(params[:id])
  @truckby.destroy
  redirect_to "/truckby"
end

  private
    def truckby_params
      params.require(:truckby).permit(:newtruckby)
    end
end
