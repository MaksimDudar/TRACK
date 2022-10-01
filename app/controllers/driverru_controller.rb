class DriverruController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :index]
  def index
    @driverru = Driverru.all
  end

  def show
    @driverru = Driverru.find(params[:id])
  end

  def new
  end

  def create
    @driverru = Driverru.new(driverru_params)
    if @driverru.save
      redirect_to @driverru
    else
      render action: 'new'
    end
end

def edit
  @driverru = Driverru.find(params[:id])
end


def update
  @driverru = Driverru.find(params[:id])
  if @driverru.update(driverru_params)
    redirect_to @driverru
  else
    render action: 'edit'
  end
end

def destroy
  @driverru = Driverru.find(params[:id])
  @driverru.destroy
  redirect_to "/driverru"
end

  private
    def driverru_params
      params.require(:driverru).permit(:newdriverru)
    end
end
