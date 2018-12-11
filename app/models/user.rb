class User < ApplicationRecord
  has_many :snaps

  enum sex: { man: 0, woman: 1 }
end
