class Api::RightBsController < ApplicationController

  include ActionController::Serialization

  def index
    render json:
    RightB.all.to_json
  end

  def show
    render json:
    RightB.find_by(id: params[:id]).to_json
  end

  def create
    right =
    RightB.create(right_bs_params)
    if right.save
          render json: { id: right.id, success: 'ok' }
      else
          render json: { message: 'error' }, status: 412
      end
  end

  def destroy
      right = RightB.find_by(id: params[:id])
      if right.delete
          render json: { sucess: 'ok' }
      else
          render json: { message: 'error' }, status: 412
      end
  end

  private

  def right_bs_params
    params.require(:right_bs).permit(:duration, :starttime, :endtime)
  end

end
