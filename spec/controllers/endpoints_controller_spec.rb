require 'rails_helper'

describe EndpointController do

  # Get Contacts
  describe 'GET contacts' do

    context 'with valid data' do

      let(:ic) { Fabricate :integration_config }

      before(:each) do

        # add contacts to integration
        ic.integration.contacts << ic.institution.contacts

        request.env['HTTP_AUTHORIZATION'] = ic.integration.api_key
        get :contacts, {
            inst: ic.institution.code,
            format: :json
        }
      end

      it 'has a 200 status code' do

        expect(response.code).to eq('200')

      end

      it 'has a JSON array response' do

        expect(JSON.parse(response.body)).to be_an Array

      end

      it 'has a response with contact info' do

        json = JSON.parse(response.body)[0]

        expect(json).to have_key 'name'
        expect(json).to have_key 'email'
        expect(json).to have_key 'branch_campus'
        expect(json).to have_key 'created_at'

      end

    end

    context 'with invalid data' do

      let(:ic) { Fabricate :integration_config }

      context 'with invalid institution' do

        before(:each) do
          request.env['HTTP_AUTHORIZATION'] = ic.integration.api_key
          get :contacts, {
              inst: 'zorg',
              format: :json
          }
        end

        it 'should return a 404' do

          expect(response.code).to eq('404')

        end

      end

      context 'with invalid api key' do

        before(:each) do
          request.env['HTTP_AUTHORIZATION'] = 'lmnop'
          get :contacts, {
              inst: ic.institution.code,
              format: :json
          }
        end

        it 'should return a 404' do

          expect(response.code).to eq('401')

        end

      end

    end

  end

  # Get Settings
  describe 'GET settings' do

    context 'with valid data' do

      let(:ic) { Fabricate :integration_config }

      before(:each) do
        request.env['HTTP_AUTHORIZATION'] = ic.integration.api_key
        get :settings, {
            inst: ic.institution.code,
            format: :json
        }
      end


      it 'has a 200 status code' do

        expect(response.code).to eq('200')

      end

      it 'returns JSON' do

        expect(JSON.parse(response.body)).to be_a Hash

      end

    end

    context 'with invalid data' do

      let(:ic) { Fabricate :integration_config }

      context 'with invalid institution' do

        before(:each) do
          request.env['HTTP_AUTHORIZATION'] = ic.integration.api_key
          get :settings, {
              inst: 'zorg',
              format: :json
          }
        end

        it 'should return a 404' do

          expect(response.code).to eq('404')

        end

      end

      context 'with invalid api key' do

        before(:each) do
          request.env['HTTP_AUTHORIZATION'] = 'lmnop'
          get :settings, {
              inst: ic.institution.code,
              format: :json
          }
        end

        it 'should return a 404' do

          expect(response.code).to eq('401')

        end

      end

      context 'with no configured InstitutionConfig' do

        before(:each) do

          inst = Fabricate :institution
          integration = Fabricate :integration

          request.env['HTTP_AUTHORIZATION'] = integration.api_key
          get :settings, {
              inst: inst.code,
              format: :json
          }
        end

        it 'should return a 204' do

          expect(response.code).to eq('204')

        end

      end

    end

  end

end