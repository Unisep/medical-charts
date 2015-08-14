# basic treatments!
BasicTreatment.create!(description: 'Periodontia')
BasicTreatment.create!(description: 'Dentística')
BasicTreatment.create!(description: 'Endodontia')
BasicTreatment.create!(description: 'Ortodontia')
BasicTreatment.create!(description: 'Prótese Total')
BasicTreatment.create!(description: 'Prótese Parcial Removível')
BasicTreatment.create!(description: 'Prótese Fixa')
BasicTreatment.create!(description: 'Odontopediatria')
BasicTreatment.create!(description: 'Cirurgia I')
BasicTreatment.create!(description: 'Cirurgia II')
BasicTreatment.create!(description: 'Outros')
BasicTreatment.create!(description: 'Especialização - Implantodontia')

# basic questions!
BasicQuestion.create!(description: 'Quando foi sua útima visita ao dentista?', kind: AnswerKind::TEXT_FIELD)
Answer::TextField.create!(description: ' Ano passado!')
BasicQuestion.first.text_field = Answer::TextField.first

b = BasicQuestion.create!(description: 'Usa uma escova...', kind: AnswerKind::RADIO_BUTTON)
b.radio_buttons << Answer::RadioButton.create(description: 'macia', checked: false)
b.radio_buttons << Answer::RadioButton.create(description: 'média', checked: false)
b.radio_buttons << Answer::RadioButton.create(description: 'dura', checked: false)

b.save!

# an answer:
p = Patient.create(name: 'Bruno Casali', cellphone: '99163882', zip_code: '85605-390', address: 'Fernando Ferrari, 301')

HistoricalQuestion.create!(basic_question: BasicQuestion.first, patient: p)
HistoricalQuestion.create!(basic_question: BasicQuestion.last, patient: p)
