module Admin
  class BasicQuestionsController < ApplicationController
    before_action :set_basic_question, only: [:show, :edit, :update, :destroy]

    def index
      @basic_questions = BasicQuestion.all
    end

    def show
    end

    def new
      @basic_question = BasicQuestion.new
    end

    def edit
    end

    def create
      @basic_question = BasicQuestion.new(basic_question_params)

      respond_to do |format|
        if @basic_question.save
          format.html { redirect_to @basic_question, notice: 'Basic question was successfully created.' }
          format.json { render :show, status: :created, location: @basic_question }
        else
          format.html { render :new }
          format.json { render json: @basic_question.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @basic_question.update(basic_question_params)
          format.html { redirect_to @basic_question, notice: 'Basic question was successfully updated.' }
          format.json { render :show, status: :ok, location: @basic_question }
        else
          format.html { render :edit }
          format.json { render json: @basic_question.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @basic_question.destroy
      respond_to do |format|
        format.html { redirect_to basic_questions_url, notice: 'Basic question was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
    def set_basic_question
      @basic_question = BasicQuestion.find(params[:id])
    end

    def basic_question_params
      params[:basic_question]
    end
  end
end
