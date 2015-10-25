module Rapidfire
  AnswerGroupsController.class_eval do
    def new
      @answer_group_builder = AnswerGroupBuilder.new(answer_group_params)
      continue_or_initialize
    end

    def create
      @answer_group_builder = AnswerGroupBuilder.new(answer_group_params)

      if @answer_group_builder.save
        next_group = @answer_group_builder.question_group.next

        if next_group.present?
          redirect_to rapidfire.new_question_group_answer_group_path(next_group)
        else
          redirect_to root_url
        end
      else
        render :new
      end
    end

    private

    def continue_or_initialize
      if current_user.historical_answers.map(&:question_group_id).include? @question_group.id
        @answer_group_builder.answers = @question_group.questions.collect do |question|
          answers = current_user.historical_answers.find_by(question_group_id: 1).answers

          answers.find { |a| a.question_id == question.id } || answers.build(question_id: question.id)
        end
      end
    end
  end
end
