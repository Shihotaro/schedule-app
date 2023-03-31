class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @schedule = Schedule.new
  end

  def create
    schedule_params = params.require(:schedule).permit(:title, :startDay, :finalDay, :allDay, :scheduleMemo)
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      flash[:notice] = "スケジュール作成に成功しました"
      redirect_to schedules_path
    else
      flash.now[:alert] = "スケジュール作成に失敗しました"
      render :new
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    schedule_params = params.require(:schedule).permit(:title, :startDay, :finalDay, :allDay, :scheduleMemo)
    if @schedule.update(schedule_params)
      flash[:notice] = "スケジュール更新に成功しました"
      redirect_to schedules_path
    else
      flash.now[:alert] = "スケジュール更新に失敗しました"
      render :edit
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] = '削除しました'
    redirect_to schedules_path
  end
end
