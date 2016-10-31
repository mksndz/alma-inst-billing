require 'rails_helper'

RSpec.describe EndpointController, type: :routing do
  describe 'routing' do

    it 'routes to #settings' do
      expect(get: '/api/test/settings').to route_to('endpoint#settings', inst: 'test')
    end

    it 'routes to #contacts' do
      expect(get: '/api/test/contacts').to route_to('endpoint#contacts', inst: 'test')
    end

  end
end
