class Admin::BasicTreatmentsController < ApplicationController
  before_action :set_basic_treatment, only: [:edit, :update, :destroy]

  def index
    @basic_treatments = BasicTreatment.all
    respond_with(@basic_treatments)
  end

  def new
    @basic_treatment = BasicTreatment.new
    respond_with(@basic_treatment)
  end

  def edit; end

  def create
    @basic_treatment = BasicTreatment.new(basic_treatment_params)
    @basic_treatment.save
    respond_with(@basic_treatment, location: admin_basic_treatments_url)
  end

  def update
    @basic_treatment.update(basic_treatment_params)
    respond_with(@basic_treatment, location: admin_basic_treatments_url)
  end

  def destroy
    @basic_treatment.destroy
    respond_with(@basic_treatment)
  end

  private
    def set_basic_treatment
      @basic_treatment = BasicTreatment.find(params[:id])
    end

    def basic_treatment_params
      params.require(:basic_treatment).permit(:description, :common)
    end
end
