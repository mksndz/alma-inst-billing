require 'faker'

Fabricator(:contact) do

  first_name      { Faker::Name.first_name  }
  last_name       { Faker::Name.last_name  }
  phone           { Faker::PhoneNumber.phone_number }
  email           { Faker::Internet.email }
  branch_campus   { Faker::Address.city_suffix }
  address         { Faker::Address.street_address }
  address2        { Faker::Address.secondary_address }
  city            { Faker::Address.city }
  state           { Faker::Address.state_abbr }
  zip             { Faker::Address.zip_code }

end

Fabricator(:contact_with_institution, from: :contact) do

  institution

end
