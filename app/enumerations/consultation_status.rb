class ConsultationStatus < EnumerateIt::Base
  associate_values terminated: 1, canceled: 2, hold: 3
end
