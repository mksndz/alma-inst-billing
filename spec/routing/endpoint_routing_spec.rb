require 'rails_helper'

RSpec.describe EndpointController, type: :routing do
  describe 'routing' do

    it 'routes to #config' do
      expect(get: '/api/test/config').to route_to('endpoint#config', inst: 'test')
    end

    it 'routes to #contacts' do
      expect(get: '/api/test/contacts').to route_to('endpoint#contacts', inst: 'test')
    end

  end
end
