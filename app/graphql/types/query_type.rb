module Types
  class QueryType < Types::BaseObject
    field_class Fields::Guardable

    field :user, Types::UserType, null: true do
      argument :id, Integer, required: true
      guard ->(obj, args, ctx) { !ctx[:current_user].nil? }
    end

    def user(id:)
      User.find(id)
    end
  end
end
