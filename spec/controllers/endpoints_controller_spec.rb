require 'rails_helper'

describe EndpointController do

  # Get Contacts
  describe 'GET contacts' do

    context 'with valid data' do

      let(:ic) { Fabricate :integration_config }

      before(:each) do
        get :contacts, { inst: ic.institution.code, format: :json }
      end

      it 'has a 200 status code' do

        expect(response.code).to eq('200')

      end

      it 'has a JSON array response' do

        expect(JSON.parse(response.body)).to be_an Array

      end

      it 'has a response with contact info' do

        expect(JSON.parse(response.body)[0]).to have_key 'name'
        expect(JSON.parse(response.body)[0]).to have_key 'email'
        expect(JSON.parse(response.body)[0]).to have_key 'branch_campus'
        expect(JSON.parse(response.body)[0]).to have_key 'created_at'

      end

    end

  end

  # Get Settings
  describe 'GET settings' do

    context 'with valid data' do


    end


  end

end