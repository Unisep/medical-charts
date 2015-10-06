module PatientsHelper
  def build_patient(patient)
    patient.current_step = 1 if patient.current_step.eql? 0
    patient.appointments.build if patient.appointments.empty?
    patient
  end
end
