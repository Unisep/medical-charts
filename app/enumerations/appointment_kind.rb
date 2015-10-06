class AppointmentKind < EnumerateIt::Base
  # Public members:
  #
  # :evaluation - Used to set a consultation appointment.
  # :execution  - Used when patient will give to continuation at the treatment.

  associate_values evaluation: 1, execution: 2
end
