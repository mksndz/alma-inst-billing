require 'faker'

Fabricator(:integration) do

  name          { "#{Faker::Hacker.adjective} #{Faker::Hacker.noun}".titleize }
  description   { Faker::Hacker.phrases }

end
