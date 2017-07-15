class Api::DiaperOnesController < ApplicationController

  include ActionController::Serialization

  def index
    render json:
    DiaperOne.all.to_json
  end

  def show
    render json:
    DiaperOne.find_by(id: params[:id]).to_json
  end

  def create
    diaper_one =
    DiaperOne.create(diaper_one_params)
    if diaper_one.save
          render json: { id: diaper_one.id, success: 'ok' }
      else
          render json: { message: 'error' }, status: 412
      end
  end

  def destroy
      diaper_one = DiaperOne.find_by(id: params[:id])
      if diaper_one.delete
          render json: { sucess: 'ok' }
      else
          render json: { message: 'error' }, status: 412
      end
  end

  private

  def DiaperOnesController_params
    params.require(:diaper_one).permit(:count, :createDate)
  end
end
