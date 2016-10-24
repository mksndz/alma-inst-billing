require 'rails_helper'

RSpec.describe Institution, type: :model do

  it 'has a String name' do
    i = Fabricate :institution
    expect(i.name).to be_a String
  end

  it 'has a String address' do
    i = Fabricate :institution
    expect(i.address).to be_a String
  end

  it 'has a String phone' do
    i = Fabricate :institution
    expect(i.phone).to be_a String
  end

  it 'has a String api_key' do
    i = Fabricate :institution
    expect(i.api_key).to be_a String
  end

  it 'has a String code' do
    i = Fabricate :institution
    expect(i.code).to be_a String
  end

  # VALIDATIONS

  it 'must have a unique name' do
    Fabricate :institution
    expect {
      Fabricate :institution
    }.to raise_error ActiveRecord::RecordInvalid
  end

end
