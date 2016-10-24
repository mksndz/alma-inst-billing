require 'rails_helper'

RSpec.describe Contact, type: :model do

  context :default do

    c = Fabricate :contact

    it 'has a String first_name' do
      expect(c.first_name).to be_a String
    end

    it 'has a String last_name' do
      expect(c.last_name).to be_a String
    end

    it 'has a String phone' do
      expect(c.phone).to be_a String
    end

    it 'has a String email' do
      expect(c.email).to be_a String
    end

    it 'has a String address1' do
      expect(c.address1).to be_a String
    end

    it 'has a String address2' do
      expect(c.address1).to be_a String
    end

    it 'belongs to an Institution' do
      expect(c.institution).to be_an Institution
    end

    # VALIDATIONS

    it 'must have a unique email' do
      expect {
        Fabricate :contact
      }.to raise_error ActiveRecord::RecordInvalid
    end

  end

end
