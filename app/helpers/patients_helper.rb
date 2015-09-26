module PatientsHelper
  def build_patient(patient)
    patient.consultations.build if patient.consultations.empty?
    patient
  end
end
