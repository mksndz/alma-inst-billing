require 'faker'

config_json = '{
    "setting_1": "' + Faker::Number.non_zero_digit + '",
    "setting_2": "' + Faker::Internet.ip_v4_address + '",
    "settings_obj": {
        "email": "' + Faker::Internet.email + '",
        "image": "' + Faker::Company.logo + '"
    }
}'


Fabricator(:integration_config) do

  config { config_json }
  institution
  integration

end
