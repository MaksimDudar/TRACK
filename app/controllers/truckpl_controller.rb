class TruckplController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :index]
  def index
    @truckpl = Truckpl.all
  end

  def show
    @truckpl = Truckpl.find(params[:id])
  end

  def new
  end

  def create
    @truckpl = Truckpl.new(truckpl_params)
    if @truckpl.save
      redirect_to @truckpl
    else
      render action: 'new'
    end
end

def edit
  @truckpl = Truckpl.find(params[:id])
end


def update
  @truckpl = Truckpl.find(params[:id])
  if @truckpl.update(truckpl_params)
    redirect_to @truckpl
  else
    render action: 'edit'
  end
end

def destroy
  @truckpl = Truckpl.find(params[:id])
  @truckpl.destroy
  redirect_to "/truckpl"
end

  private
    def truckpl_params
      params.require(:truckpl).permit(:id, :newtruckpl)
    end
end
