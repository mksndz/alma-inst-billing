require 'rails_helper'

RSpec.describe Integration do

  context :default do

    i = Fabricate :integration

    it 'has a String name' do
      expect(i.name).to be_a String
    end

    it 'has a String description' do
      expect(i.description).to be_a String
    end

    # VALIDATIONS

    it 'must have a name' do
      expect {
        Fabricate(:integration) { name { '' }  }
      }.to raise_error ActiveRecord::RecordInvalid
    end

    it 'must have a unique name' do
      expect {
        Fabricate(:integration) { name { i.name }  }
      }.to raise_error ActiveRecord::RecordInvalid
    end

  end


end
