class AddUniqueIndexRoleToAnwers < ActiveRecord::Migration
  def change
    add_index :rapidfire_answer_groups, [:question_group_id, :user_id, :user_type], unique: true, name: 'idx_answer_group_to_user_question'
  end

  def down
    remove_index :rapidfire_answer_groups, [:question_group_id, :user_id, :user_type]
  end
end
