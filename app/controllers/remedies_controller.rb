class RemediesController < ApplicationController

  def index
    remedies = Remedy.where(user_id: current_user.id)
    render json: remedies
  end
  
  def new
  end

  def show
  end

end
