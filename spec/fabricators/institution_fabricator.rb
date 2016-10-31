require 'faker'

Fabricator(:institution) do

  name      { Faker::University.name }
  code      { Faker::Team.creature }
  phone     { Faker::PhoneNumber.phone_number }
  address   { Faker::Address.street_address }
  address2  { Faker::Address.secondary_address }
  city      { Faker::Address.city }
  state     { Faker::Address.state_abbr }
  zip       { Faker::Address.zip_code }
  api_key   { Faker::Crypto.md5 }
  password  { Faker::Internet.password }

  contacts(count: 2)

end

Fabricator(:god_institution, from: :institution) do

  god       { true }

end
