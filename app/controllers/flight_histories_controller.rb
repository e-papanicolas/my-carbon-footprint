class FlightHistoriesController < ApplicationController
  before_action :set_flight_history, only: %i[ show update destroy ]

  # GET /flight_histories
  def index
    @flight_histories = FlightHistory.all

    render json: @flight_histories
  end

  # GET /flight_histories/1
  def show
    render json: @flight_history
  end

  # POST /flight_histories
  def create
    @flight_history = FlightHistory.new(flight_history_params)

    if @flight_history.save
      render json: @flight_history, status: :created, location: @flight_history
    else
      render json: @flight_history.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flight_histories/1
  def update
    if @flight_history.update(flight_history_params)
      render json: @flight_history
    else
      render json: @flight_history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flight_histories/1
  def destroy
    @flight_history.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight_history
      @flight_history = FlightHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_history_params
      params.permit(:date, :passengers, :departure, :destination, :carbon_lb, :user_id)
    end
end
