# a ideia é que um tratamento seja feito em um paciente.
# e que a cada dia que a pessoa for ser atendida ela precise de um agendamento(appointment)
# e quando ela foi atendida além do próprio tratamento ela tenha devolvido algum feedback, observações que o
# acadêmico acabou repassando.
#
# Um tratamento tem:
# - um paciente
# - e que seja baseado em um tratamento básico já existente
# - vários agendamentos
# - vários items de prontuário

class Treatment < ActiveRecord::Base
  belongs_to :basic_treatment
  belongs_to :patient

  validates :patient, presence: true, associated: true
  validates :basic_treatment, presence: true, associated: true

  def to_s
    basic_treatment.description
  end
end
