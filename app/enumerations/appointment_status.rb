class AppointmentStatus < EnumerateIt::Base
  # Public members:
  #
  # :active   - Used for new appointments just waiting the hour to be completed.
  # :canceled - When for any motives the person or doctor can't attend in accorded schedule.
  # :attended - Success, the patient and doctor have attended to the clinic in hour.

  associate_values active: 1, canceled: 2, attended: 3
end
