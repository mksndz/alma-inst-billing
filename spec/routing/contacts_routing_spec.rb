require 'rails_helper'

RSpec.describe ContactsController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/institutions/1/contacts').to route_to('contacts#index', institution_id: '1')
    end

    it 'routes to #new' do
      expect(get: '/institutions/1/contacts/new').to route_to('contacts#new', institution_id: '1')
    end

    it 'routes to #show' do
      expect(get: '/institutions/1/contacts/1').to route_to('contacts#show', id: '1', institution_id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/institutions/1/contacts/1/edit').to route_to('contacts#edit', id: '1', institution_id: '1')
    end

    it 'routes to #create' do
      expect(post: '/institutions/1/contacts').to route_to('contacts#create', institution_id: '1')
    end

    it 'routes to #update via PUT' do
      expect(put: '/institutions/1/contacts/1').to route_to('contacts#update', id: '1', institution_id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/institutions/1/contacts/1').to route_to('contacts#update', id: '1', institution_id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/institutions/1/contacts/1').to route_to('contacts#destroy', id: '1', institution_id: '1')
    end

  end
end
