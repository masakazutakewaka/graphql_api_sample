module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :user, Types::UserType, null: true do
      argument :id, Integer, required: true
    end

    def user(id:)
      User.find(id)
    end
  end
end
