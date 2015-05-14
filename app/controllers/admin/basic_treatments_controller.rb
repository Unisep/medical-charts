class Admin::BasicTreatmentsController < ApplicationController
  before_action :set_admin_basic_treatment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @admin_basic_treatments = Admin::BasicTreatment.all
    respond_with(@admin_basic_treatments)
  end

  def show
    respond_with(@admin_basic_treatment)
  end

  def new
    @admin_basic_treatment = Admin::BasicTreatment.new
    respond_with(@admin_basic_treatment)
  end

  def edit
  end

  def create
    @admin_basic_treatment = Admin::BasicTreatment.new(basic_treatment_params)
    @admin_basic_treatment.save
    respond_with(@admin_basic_treatment)
  end

  def update
    @admin_basic_treatment.update(basic_treatment_params)
    respond_with(@admin_basic_treatment)
  end

  def destroy
    @admin_basic_treatment.destroy
    respond_with(@admin_basic_treatment)
  end

  private
    def set_admin_basic_treatment
      @admin_basic_treatment = Admin::BasicTreatment.find(params[:id])
    end

    def admin_basic_treatment_params
      params.require(:admin_basic_treatment).permit(:description, :common)
    end
end
