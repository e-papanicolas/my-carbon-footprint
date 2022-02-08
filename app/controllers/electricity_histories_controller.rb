class ElectricityHistoriesController < ApplicationController
  before_action :set_electricity_history, only: %i[ show update destroy ]

  # GET /electricity_histories
  def index
    @electricity_histories = ElectricityHistory.all

    render json: @electricity_histories
  end

  # GET /electricity_histories/1
  def show
    render json: @electricity_history
  end

  # POST /electricity_histories
  def create
    @electricity_history = ElectricityHistory.new(electricity_history_params)

    if @electricity_history.save
      render json: @electricity_history, status: :created, location: @electricity_history
    else
      render json: @electricity_history.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /electricity_histories/1
  def update
    if @electricity_history.update(electricity_history_params)
      render json: @electricity_history
    else
      render json: @electricity_history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /electricity_histories/1
  def destroy
    @electricity_history.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electricity_history
      @electricity_history = ElectricityHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def electricity_history_params
      params.permit(:date, :country, :state, :electricity_value, :carbon_lb, :user_id)
    end
end
