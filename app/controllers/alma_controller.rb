class AlmaController < ApplicationController

  API_BASE = 'https://api-na.hosted.exlibrisgroup.com/'.freeze

  before_action :set_institution

  def index

  end

  # Retrieve users: GET /​almaws/​v1/​users
  # https://developers.exlibrisgroup.com/alma/apis/users/GET/gwPcGly021r0XQMGAttqcNyT3YiaSYVA/0aa8d36f-53d6-48ff-8996-485b90b103e4
  def get_users

    count = params[:count] || 25

    endpoint = 'almaws/v1/users'

    data = api_call(endpoint + '?limit=' + count.to_s)

    respond_to do |format|
      format.html { render text: data }
    end

  end

  # Get user details: GET /​almaws/​v1/​users/​{user_id}
  # https://developers.exlibrisgroup.com/alma/apis/users/GET/gwPcGly021r0XQMGAttqcPPFoLNxBoEZSZhrICr+9So=/0aa8d36f-53d6-48ff-8996-485b90b103e4
  def get_user

    endpoint = "almaws/v1/users/#{user_id}"

  end


  # Get user fines and fees: GET /​almaws/​v1/​users/​{user_id}/​fees
  # https://developers.exlibrisgroup.com/alma/apis/users/GET/gwPcGly021r0XQMGAttqcPPFoLNxBoEZywbVVu4pJCE=/0aa8d36f-53d6-48ff-8996-485b90b103e4
  def get_user_fees

    endpoint = "almaws/v1/users/#{user_id}/fees"

  end

  # Get user fine/fee: GET /​almaws/​v1/​users/​{user_id}/​fees/​{fee_id}
  # https://developers.exlibrisgroup.com/alma/apis/users/GET/gwPcGly021r0XQMGAttqcPPFoLNxBoEZt+FS+M6E8/SB/TkCXJqHPNyT3YiaSYVA/0aa8d36f-53d6-48ff-8996-485b90b103e4
  def get_user_fee

    endpoint = "almaws/v1/users/#{user_id}/fees/#{fee_id}"

  end

  private

  def set_institution
    @institution = Institution.find(params[:institution_id])
  end

  def user_id
    params[:user_id].gsub(/[^0-9a-z\s]/i, '')
  end

  def fee_id
    params[:fee_id].gsub(/[^0-9a-z\s]/i, '')
  end

  def book_price_params
    params.require(:book_price).permit(:price)
  end

  def api_call(endpoint)
    HTTParty.get "#{API_BASE}#{endpoint}", headers: { 'Authorization' => "apikey #{@institution.api_key}", 'Accept' => 'application/json' }
  end

end