class RatsController < ApplicationController
  def index
    @rats = Rat.all

    render json: @rats
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

end
