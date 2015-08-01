class HomesController < ApplicationController
  
  before_filter :set_home, only: :show
  
  def index
    @homes = Home.all
  end
  
  def show
    if params[:approved] == "false"
      @homes = Home.find_all_by_approved(false)
    else
      @homes = Home.all
    end
  end
  
private
  def set_home
    @home = Home.find(params[:id])
  end
  
end
