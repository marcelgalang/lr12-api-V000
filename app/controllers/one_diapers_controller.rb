class OneDiapersController < ApplicationController
  before_action :set_one_diaper, only: [:show, :update, :destroy]

  # GET /one_diapers
  def index
    @one_diapers = OneDiaper.all

    render json: @one_diapers
  end

  # GET /one_diapers/1
  def show
    render json: @one_diaper
  end

  # POST /one_diapers
  def create
    @one_diaper = OneDiaper.new(one_diaper_params)

    if @one_diaper.save
      render json: @one_diaper, status: :created, location: @one_diaper
    else
      render json: @one_diaper.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /one_diapers/1
  def update
    if @one_diaper.update(one_diaper_params)
      render json: @one_diaper
    else
      render json: @one_diaper.errors, status: :unprocessable_entity
    end
  end

  # DELETE /one_diapers/1
  def destroy
    @one_diaper.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_one_diaper
      @one_diaper = OneDiaper.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def one_diaper_params
      params.require(:one_diaper).permit(:user, :count)
    end
end
