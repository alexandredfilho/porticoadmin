class ShipmentsController < ApplicationController
  before_action :set_shipment, only: %i[ show edit update destroy ]

  def index
    @shipments = Shipment.all.includes(:driver, :vehicle, :customer).order(:date)

  end

  def show
  end

  def new
    @shipment = Shipment.new
  end

  def edit
  end

  def create
    @shipment = Shipment.new(shipment_params)

    respond_to do |format|
      if @shipment.save
        format.html { redirect_to @shipment, notice: "Shipment was successfully created." }
        format.json { render :show, status: :created, location: @shipment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @shipment.update(shipment_params)
        format.html { redirect_to @shipment, notice: "Shipment was successfully updated." }
        format.json { render :show, status: :ok, location: @shipment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @shipment.destroy
    respond_to do |format|
      format.html { redirect_to shipments_url, notice: "Shipment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_shipment
      @shipment = Shipment.find(params[:id])
    end

    def shipment_params
      params.require(:shipment).permit(:driver_id, :vehicle_id, :customer_id, :shipment_type, :invoice_number, :cargo_checker, :warehouse, :dock, :date, :hour)
    end
end
