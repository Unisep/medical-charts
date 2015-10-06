module Searchable
  def include
    # fixme: using pg_search
    scope :search, -> (query) { joins(:patients).where('patients.name = ?', query) }
  end
end
