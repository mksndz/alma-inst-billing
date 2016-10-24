require 'rails_helper'

RSpec.describe Integration do

  context :default do

    i = Fabricate :integration_config

    it 'has a Hash config' do
      expect(i.config).to be_a Hash
    end

    it 'has an Institution' do
      expect(i.institution).to be_an Institution
    end

    it 'has an Integration' do
      expect(i.integration).to be_an Integration
    end

  end

end
