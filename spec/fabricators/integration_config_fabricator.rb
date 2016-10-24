require 'faker'

config_hash = {
    setting_1: Faker::Number.non_zero_digit ,
    setting_2: Faker::Internet.ip_v4_address,
    settings_subhash: {
        email: Faker::Internet.email,
        image: Faker::Company.logo,
    }
}

Fabricator(:integration_config) do

  config { config_hash }
  institution
  integration

end
