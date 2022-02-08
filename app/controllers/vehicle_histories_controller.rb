class VehicleHistoriesController < ApplicationController
  before_action :set_vehicle_history, only: %i[ show update destroy ]

  # GET /vehicle_histories
  def index
    @vehicle_histories = VehicleHistory.all

    render json: @vehicle_histories
  end

  # GET /vehicle_histories/1
  def show
    render json: @vehicle_history
  end

  # POST /vehicle_histories
  def create
    @vehicle_history = VehicleHistory.new(vehicle_history_params)

    if @vehicle_history.save
      render json: @vehicle_history, status: :created, location: @vehicle_history
    else
      render json: @vehicle_history.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vehicle_histories/1
  def update
    if @vehicle_history.update(vehicle_history_params)
      render json: @vehicle_history
    else
      render json: @vehicle_history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vehicle_histories/1
  def destroy
    @vehicle_history.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_history
      @vehicle_history = VehicleHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vehicle_history_params
      params.permit(:date, :distance_value, :vehicle_make, :vehicle_model, :vehicle_year, :carbon_lb, :user_id)
    end
end
