module Types
  class SnapType < Types::BaseObject
    field :id, Integer, null: true
    field :user_id, Integer, null: true
    field :items, [Types::ItemType], null: true
  end
end
