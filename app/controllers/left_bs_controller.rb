class LeftBsController < ApplicationController
  before_action :set_left_b, only: [:show, :update, :destroy]

  # GET /left_bs
  def index
    @left_bs = LeftB.all

    render json: @left_bs
  end

  # GET /left_bs/1
  def show
    render json: @left_b
  end

  # POST /left_bs
  def create
    @left_b = LeftB.new(left_b_params)

    if @left_b.save
      render json: @left_b, status: :created, location: @left_b
    else
      render json: @left_b.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /left_bs/1
  def update
    if @left_b.update(left_b_params)
      render json: @left_b
    else
      render json: @left_b.errors, status: :unprocessable_entity
    end
  end

  # DELETE /left_bs/1
  def destroy
    @left_b.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_left_b
      @left_b = LeftB.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def left_b_params
      params.require(:left_b).permit(:user, :startTime, :endTime)
    end
end
