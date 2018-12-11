class BackOfficeSchema < GraphQL::Schema
  query(Types::QueryType)
  mutation(Types::MutationType)
  use GraphQL::Batch
  use GraphQL::Guard
end
