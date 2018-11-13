class IntroductionsController < ApplicationController
  before_action :set_introduction, only: [:edit, :destroy]
  def new 
    @introduction = Introduction.new
  end
  
  def create
    @introduction = Introduction.new(introduction_params)
    if @introduction.save
      @introduction = Introduction.new
      redirect_to manage_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @introduction = Introduction.find(params[:introduction][:id])
    if @introduction.update(introduction_params)
      redirect_to manage_url
    else
      render :edit
    end
  end

  def destroy
    @introduction.destroy
    redirect_to manage_url
  end

  private
  def set_introduction
    @introduction = Introduction.find(params[:id])
  end

  def introduction_params
    params.require(:introduction).permit(:description, :id)
  end
end
