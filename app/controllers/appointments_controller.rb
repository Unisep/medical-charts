class AppointmentsController < ApplicationController
  before_action :set_patient, if: :has_patient_id?
  before_action :set_appointment, only: [:edit, :update, :cancel, :attend]

  def index
    @appointments = @patient.present? ? @patient.appointments.active : Appointment.active
    @appointments.search(params[:query]).page(params[:page])

    respond_with(@appointments)
  end

  def show
    respond_with(@appointment)
  end

  def new
    @appointment = Appointment.new
    respond_with(@appointment)
  end

  def edit; end

  def cancel
    service = AppointmentService.new(@appointment)
    service.cancel!

    respond_with(@appointments, location: appointments_url)
  end

  def attend
    service = AppointmentService.new(@appointment)
    service.attend!

    respond_with(@appointment.patient, location: find_location!)
  end

  def create
    @appointment = @patient.appointments.create(appointment_params)
    @appointment.save

    respond_with(@appointment, location: patient_appointments_path(@patient))
  end

  def update
    @appointment.update(appointment_params)
    respond_with(@appointment, location: appointments_path)
  end

  private

  def has_patient_id?
    params.key?(:patient_id)
  end

  def find_location!
    if @appointment.evaluation?
      edit_historical_info_url(@appointment.patient)
    elsif @appointment.execution?
      appointment_evolutions_url(@appointment)
    end
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def set_patient
    @patient = Patient.find(params[:patient_id])
  end

  def appointment_params
    params.require(:appointment).permit(:attend_at, :kind, :status, :treatment_id)
  end
end
