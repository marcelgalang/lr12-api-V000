class TwoDiapersController < ApplicationController
  before_action :set_two_diaper, only: [:show, :update, :destroy]

  # GET /two_diapers
  def index
    @two_diapers = TwoDiaper.all

    render json: @two_diapers
  end

  # GET /two_diapers/1
  def show
    render json: @two_diaper
  end

  # POST /two_diapers
  def create
    @two_diaper = TwoDiaper.new(two_diaper_params)

    if @two_diaper.save
      render json: @two_diaper, status: :created, location: @two_diaper
    else
      render json: @two_diaper.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /two_diapers/1
  def update
    if @two_diaper.update(two_diaper_params)
      render json: @two_diaper
    else
      render json: @two_diaper.errors, status: :unprocessable_entity
    end
  end

  # DELETE /two_diapers/1
  def destroy
    @two_diaper.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_two_diaper
      @two_diaper = TwoDiaper.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def two_diaper_params
      params.require(:two_diaper).permit(:user, :count)
    end
end
