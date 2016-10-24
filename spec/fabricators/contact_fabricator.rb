Fabricator(:contact) do

  first_name      { 'Test' }
  last_name       { 'Contact' }
  phone           { '1-900-867-5309' }
  email           { 'fake@email.com' }
  branch_campus   { 'Westside' }
  address1        { '123 Fake St.' }
  address2        { 'Apt. A' }
  city            { 'Athens' }
  state           { 'GA' }
  zip             { '33333' }

  institution

end
