# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :items, [Types::ItemType], null: false

    def items
      Item.includes(:artist)
    end
  end
end
