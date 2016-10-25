require 'rails_helper'

RSpec.describe Integration do

  context :default do

    i = Fabricate :integration_config

    it 'has a JSON config' do
      expect(JSON.parse(i.config)).to be_a Hash
    end

    it 'has an Institution' do
      expect(i.institution).to be_an Institution
    end

    it 'has an Integration' do
      expect(i.integration).to be_an Integration
    end

  end

  context :invalid_configs do

    it 'raises an error if the value is a string' do
      ic = Fabricate.build(:integration_config, config: 'string')
      ic.valid?
      expect(ic.errors).to have_key :config
    end

    it 'raises an error if the value is a malformed hash' do
      ic = Fabricate.build(:integration_config, config: '{"key": 12')
      ic.valid?
      expect(ic.errors).to have_key :config
    end

    it 'raises an error if the value is a even more malformed hash' do
      ic = Fabricate.build(:integration_config, config: '{"key": 12, {}')
      ic.valid?
      expect(ic.errors).to have_key :config
    end

  end

end
