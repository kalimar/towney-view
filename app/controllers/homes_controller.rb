class HomesController < ApplicationController
  
  before_filter :set_home, only: :show
  
  def index
    @homes = Home.all
  end
  
  def show
  end
  
private
  def set_home
    @home = current_home
  end
  
end
