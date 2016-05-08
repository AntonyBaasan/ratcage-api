class RatsController < ApplicationController
  def index
    @rats = Rat.all

    render json: @rats
  end
end
