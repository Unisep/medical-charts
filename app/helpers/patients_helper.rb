module PatientsHelper
  def build_patient(patient)
    patient.current_step = 1 if patient.current_step.eql? 0
    patient.consultations.build if patient.consultations.empty?
    patient
  end
end
