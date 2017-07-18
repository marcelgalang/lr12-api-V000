class RightBsController < ApplicationController
  before_action :set_right_b, only: [:show, :update, :destroy]

  # GET /right_bs
  def index
    @right_bs = RightB.all

    render json: @right_bs
  end

  # GET /right_bs/1
  def show
    render json: @right_b
  end

  # POST /right_bs
  def create
    @right_b = RightB.new(right_b_params)

    if @right_b.save
      render json: @right_b, status: :created, location: @right_b
    else
      render json: @right_b.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /right_bs/1
  def update
    if @right_b.update(right_b_params)
      render json: @right_b
    else
      render json: @right_b.errors, status: :unprocessable_entity
    end
  end

  # DELETE /right_bs/1
  def destroy
    @right_b.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_right_b
      @right_b = RightB.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def right_b_params
      params.require(:right_b).permit(:user, :startTime, :endTime)
    end
end
