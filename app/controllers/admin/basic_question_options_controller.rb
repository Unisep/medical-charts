module Admin
  class BasicQuestionOptionsController < ApplicationController
    before_filter :set_basic_question

    def new
      @basic_question = BasicQuestion.new
    end

    def create

    end

    def edit
    end

    def show
    end

    def destroy
    end

    private

    def set_basic_question
      @basic_question = BasicQuestion.find params[:basic_question_id]
    end
  end
end
