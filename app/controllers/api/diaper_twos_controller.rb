class Api::DiaperTwosController < ApplicationController

  include ActionController::Serialization

  def index
    render json:
    DiaperTwo.all.to_json
  end

  def show
    render json:
    DiaperTwo.find_by(id: params[:id]).to_json
  end

  def create
    diaper_two =
    DiaperTwo.create(diaper_two_params)
    if diaper_two.save
          render json: { id: diaper_two.id, success: 'ok' }
      else
          render json: { message: 'error' }, status: 412
      end
  end

  def destroy
      diaper_two = DiaperTwo.find_by(id: params[:id])
      if diaper_two.delete
          render json: { sucess: 'ok' }
      else
          render json: { message: 'error' }, status: 412
      end
  end

  private

  def diaper_two_params
    params.require(:diaper_two).permit(:count, :createDate)
  end
end
