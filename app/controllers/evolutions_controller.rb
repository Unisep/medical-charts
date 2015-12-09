class EvolutionsController < ApplicationController
  before_action :set_appointment
  before_action :set_evolution, only: [:show, :edit, :update, :destroy]

  def index
    @evolutions = @appointment.evolutions

    respond_with(@evolutions)
  end

  def show
    respond_with(@evolution)
  end

  def new
    @evolution = Evolution.new
    respond_with(@evolution)
  end

  def edit; end

  def create
    @evolution = Evolution.new(evolution_params)
    @evolution.save

    respond_with(@evolution, location: evolutions_path)
  end

  def update
    @evolution.update(evolution_params)
    respond_with(@evolution, location: evolutions_path)
  end

  def destroy
    @evolution.destroy
    respond_with(@evolution, location: evolutions_path)
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:appointment_id])
  end

  def set_evolution
    @evolution = Evolution.find(params[:id])
  end

  def evolution_params
    params.require(:evolution).permit()
  end
end
