class QuestionType
  def self.to_a
    [['Caixas de Seleção (múltipla escolha)', 'Checkbox'],
     ['Data', 'Date'],
     ['Campo de Texto (grande, várias linhas)', 'Long'],
     ['Número', 'Numeric'],
     ['Botões de Rádio (várias opções, apenas uma escolha)', 'Radio'],
     ['Uma escolha (várias opções com formato de menu como este)', 'Select'],
     ['Campo de Texto (uma linha)', 'Short']]
  end
end
