require 'rails_helper'

RSpec.describe BookPrice, type: :model do

  it 'has a String lc_start' do
    bp = Fabricate :book_price
    expect(bp.lc_start).to be_a String
  end

  it 'has a String lc_end' do
    bp = Fabricate :book_price
    expect(bp.lc_end).to be_a String
  end

  it 'has a String description' do
    bp = Fabricate :book_price
    expect(bp.description).to be_a String
  end

  it 'has a Integer price' do
    bp = Fabricate :book_price
    expect(bp.price).to be_a Float
  end

  # VALIDATIONS

  it 'must have a unique lc_start' do
    Fabricate :book_price
    expect {
      Fabricate :book_price
    }.to raise_error ActiveRecord::RecordInvalid
  end


  it 'must have a unique lc_end' do
    Fabricate :book_price
    expect {
      Fabricate :book_price
    }.to raise_error ActiveRecord::RecordInvalid
  end

  it 'must have a unique description' do
    Fabricate :book_price
    expect {
      Fabricate :book_price
    }.to raise_error ActiveRecord::RecordInvalid
  end

end
