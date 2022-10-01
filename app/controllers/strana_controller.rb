class StranaController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :index]
  def index
    @strana = Strana.all
  end

  def show
    @strana = Strana.find(params[:id])
  end

  def new
  end

  def create
    @strana = Strana.new(strana_params)
    if @strana.save
      redirect_to @strana
    else
      render action: 'new'
    end
end

def edit
  @strana = Strana.find(params[:id])
end


def update
  @strana = Strana.find(params[:id])
  if @strana.update(strana_params)
    redirect_to @strana
  else
    render action: 'edit'
  end
end

def destroy
  @strana = Strana.find(params[:id])
  @strana.destroy
  redirect_to "/strana"
end

  private
    def strana_params
      params.require(:strana).permit(:newstrana)
    end
end
