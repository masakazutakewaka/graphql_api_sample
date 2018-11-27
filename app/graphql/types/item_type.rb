module Types
  class ItemType < Types::BaseObject
    field :id, Integer, null: false
    field :name, String, null: true
    field :price, Integer, null: true
    field :description, String, null: true
    field :brand_id, Integer, null: true
  end
end
