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

# Rapidfire Questions

module Rapidfire
  qg1 = QuestionGroup.create(name: 'Estado Atual')

  qg1.questions << Question.create(question_text: 'Queixa principal', type: 'Rapidfire::Questions::Long')
  qg1.questions << Question.create(question_text: 'Histórico da doença atual', type: 'Rapidfire::Questions::Long')
  qg1.questions << Question.create(question_text: 'Histórico da doença na família', type: 'Rapidfire::Questions::Long')

  qg2 = QuestionGroup.create(name: 'História Médica')

  options = <<-OPT
Doenças Próprias da infância - sarampo, rubéola, parotidite, epidêmica-cachumba, coqueluche, escarlatina, varicela, poliomielite.\r\n
Doenças Psiquiátricas e Psicológicas\r\n
Acidentes e traumatismos\r\n
Cirurgias\r\n
Hospitalizações\r\n
Infecções\r\n
Dermatopatias\r\n
Sistema Respiratório - tosse, escarro, asma brônquica, bronquite, enfisema, pneumonia, tuberculose, hemoptise, pleurite\r\n
Sistema Cardiovascular - cardiopatias, hipertensão, febre reumática, sopros, anginas, palpitações, dispneia (paroxística noturna), ortopneia, edema, exames recentes, caludicação,
dores ou edema nas extremidades, varicosidades e tromboflebite\r\n
Sistema Gastrintestinal - disfagia, odinofagia, azia, úlceras, gastrites, náuseas, vômitos, regurgitação, hematêmese, dispepsia, constipação, diarreias, sangramento retal,
 melena, hemorroidas, flatluência excessiva, icterícia, hepatopatias\r\n
Sistema Urinário - frequência das micções, poliúria, nictúria, ardência ou dor ao urinar, hematúria, incontinência, litíases, infecções\r\n
Sistema Gênito-reprodutor masculino - hérnias, secreções e ulcerações penianas, dor ou nódulos testiculares, DST\r\n
Sistema Gênito-reprodutor feminino - idade da menarca;\r\n
Regularidade menstrual - dismenorreia, TPM, menopausa, reposição hormonal, DST, pruridos, nódulos ou ulcerações, uso de anticoncepcionais\r\n
Sistema Musculoesquelético - desmaios, vertigens, convulções, paralisia, dormência, formigamento, tremores\r\n
Sistema Hematológico - anemias, equimoses, hemorragias, transfusões, neoplasias\r\n
Sistema Endócrino - hipertireoidismo, hipotireoidismo, hipoparatireoidismo, hiperparatireoidismo, diabetes (tipo 1, tipo 2, insípido)\r\n
Sistema Nervoso Periférico - parestesias, hipofunções sensoriais ou motoras\r\n
Sistema Nervoso Central - cefaleias, síncopes, vertigens, insônias, tremores, demência, sentil, depressão senil, Alzheimer, Parkinson\r\n
Alergias
OPT
  qg2.questions << Question.create(question_text: 'Marque as doenças que já teve:', type: 'Rapidfire::Questions::Checkbox', answer_options: options)
  qg2.questions << Question.create(question_text: 'Observações:', type: 'Rapidfire::Questions::Long')

  qg3 = QuestionGroup.create(name: 'História Odontoestomatológica')

  yes_or_no = "Sim\r\nNão"
  lft_or_rgt = "Esquerdo\r\nDireito"
  check_options = "Frio\r\nCalor\r\nMastigação\r\nDoce\r\nEscovação\r\nFio Dental"

  qg3.questions << Question.create(question_text: 'Quantas vezes ao ano vai ao dentista:', type: 'Rapidfire::Questions::Numeric')
  qg3.questions << Question.create(question_text: 'Quando foi sua última visita ao dentista:', type: 'Rapidfire::Questions::Date')
  qg3.questions << Question.create(question_text: 'Sente medo quando visita o dentista?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
  qg3.questions << Question.create(question_text: 'O que lhe causa medo?', type: 'Rapidfire::Questions::Short')
  qg3.questions << Question.create(question_text: 'Já fez alguma cirurgia na boca?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
  qg3.questions << Question.create(question_text: 'Motivo:', type: 'Rapidfire::Questions::Short')
  qg3.questions << Question.create(question_text: 'Teve inchaço ou hemorragia excessiva?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
  qg3.questions << Question.create(question_text: 'Já teve algum trauma na face ou cabeça?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
  qg3.questions << Question.create(question_text: 'Já usou aparelho ortodôntico?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
  qg3.questions << Question.create(question_text: 'Já teve algum tipo de reação alérgica a anestésico odontológico?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
  qg3.questions << Question.create(question_text: 'Tem ou teve herpes labial constante?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
  qg3.questions << Question.create(question_text: 'Tem ou teve aftas frequentes?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
  qg3.questions << Question.create(question_text: 'Sente queimação ou desconforto na língua?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
  qg3.questions << Question.create(question_text: 'Tem alguma dor provocada nos dentes?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
  qg3.questions << Question.create(question_text: 'Quais são os estímulos?', type: 'Rapidfire::Questions::Checkbox', answer_options: check_options)
  qg3.questions << Question.create(question_text: 'Sente dor espontânea nos dentes?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
  qg3.questions << Question.create(question_text: 'Sente retenção de alimentos nos dentes?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
  qg3.questions << Question.create(question_text: 'Mastiga dos dois lados da boca?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
  qg3.questions << Question.create(question_text: 'Se não, qual lado prefere?', type: 'Rapidfire::Questions::Radio', answer_options: lft_or_rgt)
  qg3.questions << Question.create(question_text: 'Tem ou teve aftas frequentes?', type: 'Rapidfire::Questions::Radio', answer_options: yes_or_no)
end
