module Searchable
  extend ActiveSupport::Concern

  def self.included(base)
    base.include(ClassMethods)

    base.instance_eval do
      ##
      # Public: Just a scope method wrapper to verify if the method has an query param,
      #         run scoped pg_search but if not, there is run the `all` scope.
      #
      # Returns an ActiveRecord::Relation object.
      def self.search(query = nil)
        return all unless query.present?

        sql = searchable_attributes.join(' ILIKE :query OR ') << ' ILIKE :query'
        joins(joinable_tables).where(sql, query: "%#{query}%")
      end
    end

    base.class_attribute :searchable_attributes
    base.class_attribute :joinable_tables
  end

  module ClassMethods
    def searchable_by(*attributes, joins: {})
      self.searchable_attributes = attributes
      self.joinable_tables = joins
    end
  end
end
