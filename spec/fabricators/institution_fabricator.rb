require 'faker'

Fabricator(:institution) do

  name      { Faker::University.name }
  code      { Faker::Team.creature }
  address   { Faker::Address.street_address }
  phone     { Faker::PhoneNumber.phone_number }
  api_key   { Faker::Crypto.md5 }

end
