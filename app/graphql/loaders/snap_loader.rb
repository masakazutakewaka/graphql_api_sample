class SnapLoader < GraphQL::Batch::Loader
  def initialize(snap)
    @snap = snap
  end

  def perform(user_id)
    @snap.where(user_id: user_id)
  end
end
