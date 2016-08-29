Fabricator(:contact) do
  institution
  name { 'Test Contact' }
  address1 { '123 Fake St.' }
  phone { '1-900-867-5309' }
  email { 'fake@email.com' }
end
