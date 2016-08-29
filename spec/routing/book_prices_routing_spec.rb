require 'rails_helper'

RSpec.describe BookPricesController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/book_prices').to route_to('book_prices#index')
    end

    it 'routes to #new' do
      expect(:get => '/book_prices/new').to route_to('book_prices#new')
    end

    it 'routes to #edit' do
      expect(:get => '/book_prices/1/edit').to route_to('book_prices#edit', :id => '1')
    end

    it 'routes to #create' do
      expect(:post => '/book_prices').to route_to('book_prices#create')
    end

    it 'routes to #update via PUT' do
      expect(:put => '/book_prices/1').to route_to('book_prices#update', :id => '1')
    end

    it 'routes to #update via PATCH' do
      expect(:patch => '/book_prices/1').to route_to('book_prices#update', :id => '1')
    end

    it 'routes to #destroy' do
      expect(:delete => '/book_prices/1').to route_to('book_prices#destroy', :id => '1')
    end

  end
end
