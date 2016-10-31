require 'rails_helper'

RSpec.describe Contact do

  context :default do

    c = Fabricate :contact

    it 'has a String first_name' do
      expect(c.first_name).to be_a String
    end

    it 'has a String last_name' do
      expect(c.last_name).to be_a String
    end

    it 'has a String branch_campus' do
      expect(c.branch_campus).to be_a String
    end

    it 'has a String phone' do
      expect(c.phone).to be_a String
    end

    it 'has a String email' do
      expect(c.email).to be_a String
    end

    it 'has a String address' do
      expect(c.address).to be_a String
    end

    it 'has a String address2' do
      expect(c.address2).to be_a String
    end

    it 'has a String city' do
      expect(c.city).to be_a String
    end

    it 'has a String state' do
      expect(c.state).to be_a String
    end

    it 'has a String zip' do
      expect(c.zip).to be_a String
    end

    it 'belongs to an Institution' do
      cwi = Fabricate :contact_with_institution
      expect(cwi.institution).to be_an Institution
    end

    # VALIDATIONS

    it 'must have a unique email' do
      expect {
        Fabricate(:contact) { email { c.email } }
      }.to raise_error ActiveRecord::RecordInvalid
    end

  end

end
