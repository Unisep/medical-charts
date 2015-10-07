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
    @appointment.save!
  end
end
