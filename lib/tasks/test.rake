namespace :batch do
  desc "try graphQL query"
  task query: :environment do
    query = <<~EOS
{
  user(id: 1) {
    id
    name
    sex
    snaps
  }
}
    EOS
    puts BackOfficeSchema.execute(query)['data']
  end
end
