class QuestionType
  def self.to_a
    [['Caixas de Seleção (múltipla escolha)', 'Rapidfire::Questions::Checkbox'],
     ['Data', 'Rapidfire::Questions::Date'],
     ['Campo de Texto (grande, várias linhas)', 'Rapidfire::Questions::Long'],
     ['Número', 'Rapidfire::Questions::Numeric'],
     ['Botões de Rádio (várias opções, apenas uma escolha)', 'Rapidfire::Questions::Radio'],
     ['Uma escolha (várias opções com formato de menu como este)', 'Rapidfire::Questions::Select'],
     ['Campo de Texto (uma linha)', 'Rapidfire::Questions::Short']]
  end

  def self.match(item)
    result = to_a.select { |k, v| v == item }

    result[0][0]
  end
end
