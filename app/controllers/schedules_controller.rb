class SchedulesController < ApplicationController

  def index
    schedules = Schedule.all
    render json: schedules
  end

  # def create
  #   schedule = Schedule.new(timing: params[:timing], frequency: params[:frequency])
  # end

end
