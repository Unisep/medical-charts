class Tooth < ActiveRecord::Base
  has_and_belongs_to_many :evolutions

  scope :from_evolution, -> (id) { includes(:evolutions).where('evolutions.id' => id) }

  def self.any_tooth?(id)
    from_evolution(id).present?
  end
end
