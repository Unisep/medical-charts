class HistoricalInfosController < ApplicationController
  before_action :set_patient

  def edit; end

  def update
    @patient.update(patient_params)
    session[:current_patient_id] = @patient.id

    respond_with(@patient, url: rapidfire.new_question_group_answer_group_path(Rapidfire::QuestionGroup.first))
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient)
      .permit(:birthday, :sex, :marital_status, :ethnicity, :nationality, :naturalness, :primary_document, :profession)
  end
end
