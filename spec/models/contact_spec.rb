require 'rails_helper'

RSpec.describe Contact, type: :model do

  it 'has a String name' do
    c = Fabricate :contact
    expect(c.name).to be_a String
  end

  it 'has a String address' do
    c = Fabricate :contact
    expect(c.address).to be_a String
  end

  it 'has a String phone' do
    c = Fabricate :contact
    expect(c.phone).to be_a String
  end

  it 'has a String email' do
    c = Fabricate :contact
    expect(c.email).to be_a String
  end

  it 'belongs to an Institution' do
    c = Fabricate :contact
    expect(c.institution).to be_an Institution
  end


end
