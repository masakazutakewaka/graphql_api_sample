namespace :batch do
  desc "try graphQL query"
  task query: :environment do
    query = <<~EOS
{
  user(id: 1) {
    id
    name
    sex
    snaps {
      id
      userId
    }
  }
}
    EOS
    binding.pry
    puts BackOfficeSchema.execute(query)
  end
end
