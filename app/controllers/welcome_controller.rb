class WelcomeController < ApplicationController
  before_action :authenticate_home!

  def index
  end
end
