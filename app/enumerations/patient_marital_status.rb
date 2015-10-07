class PatientMaritalStatus < EnumerateIt::Base
  associate_values single: 1, married: 2, divorced: 3, widower: 4
end
