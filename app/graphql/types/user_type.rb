module Types
  class UserType < Types::BaseObject
    field :id, Integer, null: false
    field :name, String, null: true
    field :sex, Types::SexType, null: true
    field :snaps, Types::SnapType.connection_type, null: true
  end
end
