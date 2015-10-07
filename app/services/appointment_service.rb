class AppointmentService
  attr_accessor :appointment

  def initialize(appointment)
    @appointment = appointment
  end

  def cancel!
    @appointment.canceled!
    @appointment.save!
  end

  def attend!
    @appointment.attended!
    @appointment.patient.update_attributes(curr_step: 2)

    @appointment.save!
  end
end
