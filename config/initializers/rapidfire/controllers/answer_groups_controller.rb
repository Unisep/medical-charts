module Rapidfire
  AnswerGroupsController.class_eval do
    def create
      @answer_group_builder = AnswerGroupBuilder.new(answer_group_params)

      if @answer_group_builder.save
        next_group = @answer_group_builder.question_group.next

        if next_group.present?
          redirect_to rapidfire.new_question_group_answer_group_path(next_group)
        else
          # redir to patient.
          redirect_to main_app.root_url, notice: I18n.t('rapidfire.notices.sucess')
        end
      else
        render :new
      end
    end

    def edit
      AnswerGroupBuilder.new(answer_group_params)
    end

    def update

    end

    def destroy

    end

  end
end
