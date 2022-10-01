class DriverbyController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :index]
  def index
    @driverby = Driverby.all
  end

  def show
    @driverby = Driverby.find(params[:id])
  end

  def new
  end

  def create
    @driverby = Driverby.new(driverby_params)
    if @driverby.save
      redirect_to @driverby
    else
      render action: 'new'
    end
end

def edit
  @driverby = Driverby.find(params[:id])
end


def update
  @driverby = Driverby.find(params[:id])
  if @driverby.update(driverby_params)
    redirect_to @driverby
  else
    render action: 'edit'
  end
end

def destroy
  @driverby = Driverby.find(params[:id])
  @driverby.destroy
  redirect_to "/driverby"
end

  private
    def driverby_params
      params.require(:driverby).permit(:newdriverby)
    end
end
