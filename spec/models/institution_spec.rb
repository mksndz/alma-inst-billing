require 'rails_helper'

RSpec.describe Institution, type: :model do

  context :default do

    i = Fabricate :institution

    it 'has a String name' do
      expect(i.name).to be_a String
    end

    it 'has a String address' do
      expect(i.address).to be_a String
    end

    it 'has a String phone' do
      expect(i.phone).to be_a String
    end

    it 'has a String api_key' do
      expect(i.api_key).to be_a String
    end

    it 'has a String code' do
      expect(i.code).to be_a String
    end

    # VALIDATIONS

    it 'must have a unique name' do
      expect {
        Fabricate(:institution) { name { i.name }  }
      }.to raise_error ActiveRecord::RecordInvalid
    end

  end


end
