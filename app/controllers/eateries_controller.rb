class EateriesController < ApplicationController
  before_action :set_eatery, only: [:show, :update, :destroy]

  # GET /eateries
  def index
    @eateries = Eatery.all

    render json: @eateries
  end

  # GET /eateries/1
  def show
    render json: @eatery
  end

  # POST /eateries
  def create
    @eatery = Eatery.new(eatery_params)

    if @eatery.save
      render json: @eatery, status: :created, location: @eatery
    else
      render json: @eatery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /eateries/1
  def update
    if @eatery.update(eatery_params)
      render json: @eatery
    else
      render json: @eatery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /eateries/1
  def destroy
    @eatery.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eatery
      @eatery = Eatery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def eatery_params
      params.require(:eatery).permit(:name)
    end
end
