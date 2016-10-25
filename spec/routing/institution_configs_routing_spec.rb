require 'rails_helper'

RSpec.describe IntegrationConfigsController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/integration_configs').to route_to('integration_configs#index')
    end

    it 'routes to #new' do
      expect(get: '/integration_configs/new').to route_to('integration_configs#new')
    end

    it 'routes to #show' do
      expect(get: '/integration_configs/1').to route_to('integration_configs#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/integration_configs/1/edit').to route_to('integration_configs#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/integration_configs').to route_to('integration_configs#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/integration_configs/1').to route_to('integration_configs#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/integration_configs/1').to route_to('integration_configs#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/integration_configs/1').to route_to('integration_configs#destroy', id: '1')
    end

  end
end
