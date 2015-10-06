class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = Appointment.active.evaluation.page(params[:page])

    respond_with(@appointments)
  end

  def show
    respond_with(@appointment)
  end

  def new
    @appointment = Appointment.new
    respond_with(@appointment)
  end

  def edit
  end

  def search
    @appointments = Appointment.active.evaluation.search(params[:q]).page(params[:page])

    render :index
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.save
    respond_with(@appointment, location: appointments_path)
  end

  def update
    @appointment.update(appointment_params)
    respond_with(@appointment, location: appointments_path)
  end

  def destroy
    @appointment.destroy
    respond_with(@appointment, location: appointments_path)
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit()
  end
end
