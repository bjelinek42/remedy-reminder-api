class RemediesController < ApplicationController

  def index
    remedies = Remedy.where(user_id: current_user.id)
    render json: remedies
  end
  
  def new
  end

  def show
    remedy = Remedy.find_by(id: params[:id])
    render json: remedy
  end

end
