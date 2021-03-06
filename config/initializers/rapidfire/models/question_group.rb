Rails.application.config.to_prepare do
  Rapidfire::QuestionGroup.class_eval do
    validates :name, :presence => true

    def next
      self.class.where('id > ?', id).first
    end

    def previous
      self.class.where('id < ?', id).last
    end
  end
end
