json.array!(@basic_questions) do |basic_question|
  json.extract! basic_question, :id
  json.url basic_question_url(basic_question, format: :json)
end
