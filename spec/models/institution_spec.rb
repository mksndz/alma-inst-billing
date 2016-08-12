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

end
