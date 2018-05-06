class FicsController < ApplicationController
  def index
    @fics = Fic.all
    render json: @fics
  end

  def show
    @fic = Fic.find(params[:id])
    render json: @fic
  end
end
