class Fields::Guardable < GraphQL::Schema::Field
  def initialize(*args, guard: nil, **kwargs, &block)
    @guard = guard
    super *args, **kwargs, &block
  end

  def to_graphql
    field_defn = super
    field_defn.tap { |d| d.metadata[:guard] = @guard }
  end
end
