require 'faker'

Fabricator(:integration) do

  name          { "#{Faker::Hacker.adjective} #{Faker::Hacker.noun}".titleize }
  description   { Faker::Hacker.phrases }
  api_key       { Faker::Crypto.md5 }

end
