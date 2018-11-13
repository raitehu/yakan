class CareersController < ApplicationController
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

  def destroy
    Career.destroy(params[:id])
    redirect_to manage_url
  end

  private
    def career_params
      params.require(:career).permit(:the_day, :title, :description)
    end
end
