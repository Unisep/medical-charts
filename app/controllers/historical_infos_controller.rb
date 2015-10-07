class HistoricalInfosController < ApplicationController
  before_action :set_patient
  before_action :load_wizard, only: [:edit, :update]

  def edit; end

  def update
    if @patient.update(patient_params)
      redirect_to @patient, notice: 'Patient was successfully updated.'
    else
      render action: 'edit'
    end
  end

  private

  def load_wizard
    @wizard = ModelWizard.new(@patient || Patient, session, patient_params, :patient)

    if self.action_name.eql? 'edit'
      @wizard.start
    elsif self.action_name.eql? 'update'
      @wizard.process
    end
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :email, :address, :state, :city, :id,
                                    :zip_code, :district, :number, :phone, :current_step,
                                    :cellphone, basic_treatment_ids: [],
                                    appointments_attributes: [:attend_at, :kind, :id, :status]) if params.has_key? :patient
  end
end
