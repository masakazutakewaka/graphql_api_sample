module Types
  class UserType < Types::BaseObject
    field :id, Integer, null: false
    #field :password, String, null: false
    field :sex, String, null: false
    field :snaps, [Types::SnapType], null: true
  end

  def snaps(user_id)
    SnapLoader.for(Snap).load_many(object.id)
  end
end
