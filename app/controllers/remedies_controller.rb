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

  def create
    remedy = Remedy.new(
      user_id: current_user.id,
      name: params[:name],
      start_date: params[:start_date],
      dosage: params[:dosage],
      special_instructions: params[:special_instructions],
      schedule_id: params[:schedule_id],
      end_date: params[:end_date],
      kind: params[:kind]
    )
    remedy.save
    render json: remedy
  end

  def edit
  end

  def update
    remedy = Remedy.find_by(id: params[:id])
    remedy.name = params[:name]
    remedy.dosage = params[:dosage]
    remedy.special_instructions = params[:special_instructions]
    remedy.schedule_id = params[:schedule_id]
    remedy.end_date = params[:end_date]
    remedy.kind = params[:kind]
    remedy.save
    render json: remedy
  end

end
