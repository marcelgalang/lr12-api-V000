class Api::LeftBsController < ApplicationController

  def index
    render json:
    LeftBs.order(:starttime).to_json
  end

  def show
    render json:
    LeftBs.find_by(id: params[:id]).to_json
  end

  def create
    left =
    LeftBs.create(left_bs_params)
    if left.save
          render json: { id: left.id, success: 'ok' }
      else
          render json: { message: 'error' }, status: 412
      end
  end

  def destroy
      left = LeftBs.find_by(id: params[:id])
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
