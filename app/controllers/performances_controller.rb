class PerformancesController < ApplicationController
  before_action :set_performance, only: [:edit, :destroy]
  def new
    @performance = Performance.new
  end

  def create
    @performance = Performance.new(performance_params)
    if @performance.save
      @performance = Performance.new
    end
    redirect_to manage_url
  end

  def edit
  end

  def update
    @performance = Performance.find(params[:performance][:id])
    if @performance.update(performance_params)
      redirect_to manage_url
    else
      render :edit
    end
  end

  def destroy
    @performance.destroy
    redirect_to manage_url
  end

  private
    def performance_params
      params.require(:performance).permit(:title, :subtitle, :performance_date, :venue, :poster, :description, :ticket_url, :open_time, :start_time, :finish_time, :has_reserved)
    end
    def set_performance
      @performance = Performance.find(params[:id])
    end
end
