class CareersController < ApplicationController
  before_action :set_career, only: [:edit, :destroy] 
  def new
    @career = Career.new
  end

  def create
    @career = Career.new(career_params)
    if @career.save
      @carrer = Career.new
      redirect_to manage_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @career = Career.find(params[:career][:id])
    if @career.update(career_params)
      redirect_to manage_url
    else
      render :edit
    end    
  end

  def destroy
    @career.destroy
    redirect_to manage_url
  end

  private
    def career_params
      params.require(:career).permit(:the_day, :title, :description, :id)
    end
    def set_career
      @career = Career.find(params[:id])
    end
end
