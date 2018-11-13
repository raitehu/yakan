class StaticPagesController < ApplicationController
  def index
    @introductions = Introduction.all
    @careers = Career.all
  end

  def manage
    @introductions = Introduction.all
    @introduction = Introduction.new
    @careers = Career.all
    @career = Career.new
  end
end
