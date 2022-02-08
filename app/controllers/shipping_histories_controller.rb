class ShippingHistoriesController < ApplicationController
  before_action :set_shipping_history, only: %i[ show update destroy ]

  # GET /shipping_histories
  def index
    @shipping_histories = ShippingHistory.all

    render json: @shipping_histories
  end

  # GET /shipping_histories/1
  def show
    render json: @shipping_history
  end

  # POST /shipping_histories
  def create
    @shipping_history = ShippingHistory.new(shipping_history_params)

    if @shipping_history.save
      render json: @shipping_history, status: :created, location: @shipping_history
    else
      render json: @shipping_history.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shipping_histories/1
  def update
    if @shipping_history.update(shipping_history_params)
      render json: @shipping_history
    else
      render json: @shipping_history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shipping_histories/1
  def destroy
    @shipping_history.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipping_history
      @shipping_history = ShippingHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipping_history_params
      params.permit(:date, :weight, :distance, :method, :carbon_lb, :user_id)
    end
end
