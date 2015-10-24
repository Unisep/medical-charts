class HistoricalInfosController < ApplicationController
  before_action :set_patient
  before_action :load_wizard, only: [:edit, :update]

  def edit; end

  def update
    if @wizard.save
      redirect_to rapidfire.new_question_group_answer_group_path(Rapidfire::QuestionGroup.first)
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
    params.require(:patient).permit(:birthday, :sex, :marital_status, :ethnicity, :nationality, :curr_step,
                                    :naturalness, :primary_document, :profession) if params.has_key? :patient
  end
end
