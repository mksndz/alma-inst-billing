require 'faker'

Fabricator(:integration) do

  name          { "#{Faker::Hacker.adjective} #{Faker::Hacker.noun}".titleize }
  description   { Faker::Hacker.say_something_smart }
  api_key       { Faker::Crypto.md5 }

end
