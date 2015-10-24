module Rapidfire
  AnswerGroupsController.class_eval do
    def create
      @answer_group_builder = AnswerGroupBuilder.new(answer_group_params)

      if !@answer_group_builder.save
        redirect_to rapidfire.new_question_group_answer_group_path(@answer_group_builder.question_group.next)
      else
        render :new
      end
    end
  end
end
