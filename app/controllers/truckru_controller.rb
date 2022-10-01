class TruckruController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :index]
  def index
  @truckru = Truckru.all
end

def show
  @truckru = Truckru.find(params[:id])
end

def new
end

def create
  @truckru = Truckru.new(truckru_params)
  if @truckru.save
    redirect_to @truckru
  else
    render action: 'new'
  end
end

def edit
@truckru = Truckru.find(params[:id])
end


def update
@truckru = Truckru.find(params[:id])
if @truckru.update(truckru_params)
  redirect_to @truckru
else
  render action: 'edit'
end
end

def destroy
@truckru = Truckru.find(params[:id])
@truckru.destroy
redirect_to "/truckru"
end

private
  def truckru_params
    params.require(:truckru).permit(:newtruckru)
  end
end
