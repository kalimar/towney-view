class HomesController < ApplicationController
  before_action :set_home, only: :show

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
