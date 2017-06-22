class Api::LeftBsController < ApplicationController

  include ActionController::Serialization

  def index
    render json:
    LeftB.order(:starttime).to_json
  end

  def show
    render json:
    LeftB.find_by(id: params[:id]).to_json
  end

  def create
    left =
    LeftB.create(left_bs_params)
    if left.save
          render json: { id: left.id, success: 'ok' }
      else
          render json: { message: 'error' }, status: 412
      end
  end

  def destroy
      left = LeftB.find_by(id: params[:id])
      if left.delete
          render json: { sucess: 'ok' }
      else
          render json: { message: 'error' }, status: 412
      end
  end

  private

  def left_bs_params
    params.require(:left_bs).permit(:duration, :starttime, :endtime)
  end

end
