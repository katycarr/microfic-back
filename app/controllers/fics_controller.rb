class FicsController < ApplicationController
  def index
    @fics = Fic.all
    render json: @fics
  end

  def show
    @fic = Fic.find(params[:id])
    render json: @fic
  end

  def create
    @fic = Fic.new(fic_params)
    @fic.user = loggedin_user
    if @fic.save
      render json: @fic
    else
      render json: {errors: @fic.errors.full_messages}, status: 422
    end
  end

  private

  def fic_params
    params.require(:fic).permit(:title, :summary, :story)
  end
end
