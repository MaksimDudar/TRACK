class SemitrailerController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :index]
  def index
    @semitrailer = Semitrailer.all
  end

  def show
    @semitrailer = Semitrailer.find(params[:id])
  end

  def new
  end

  def create
    @semitrailer = Semitrailer.new(semitrailer_params)
    if @semitrailer.save
      redirect_to @semitrailer
    else
      render action: 'new'
    end
end

def edit
  @semitrailer = Semitrailer.find(params[:id])
end


def update
  @semitrailer = Semitrailer.find(params[:id])
  if @semitrailer.update(semitrailer_params)
    redirect_to @semitrailer
  else
    render action: 'edit'
  end
end

def destroy
  @semitrailer = Semitrailer.find(params[:id])
  @semitrailer.destroy
  redirect_to "/semitrailer"
end

  private
    def semitrailer_params
      params.require(:semitrailer).permit(:newsemitrailer)
    end
end
