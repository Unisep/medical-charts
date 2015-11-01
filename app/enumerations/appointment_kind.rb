class AppointmentKind < EnumerateIt::Base
  # Public members:
  #
  # :evaluation - Used to set an appointment for evaluation.
  # :execution  - Used when patient will give to continuation at the treatment.

  associate_values evaluation: 1, execution: 2
end
