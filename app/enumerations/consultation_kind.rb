class ConsultationKind < EnumerateIt::Base
  associate_values treatment: 1, forwarding_visit: 2
end
