class StaticPagesController < ApplicationController
  def index
    @performances = Performance.all
    @fee_structures = FeeStructure.all
    @programs = Program.all
    @players = Player.all
    @introductions = Introduction.all
    @careers = Career.all
  end

  def manage
    @performances = Performance.all
    @performance = Performance.new
    @fee_structures = FeeStructure.all
    @fee_structure = FeeStructure.new
    @programs = Program.all
    @program = Program.new
    @players = Player.all
    @player = Player.new
    @introductions = Introduction.all
    @introduction = Introduction.new
    @careers = Career.all
    @career = Career.new
  end
end
