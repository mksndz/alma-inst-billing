class IntegrationsController < ApplicationController
  before_action :set_integration, only: [:show, :edit, :update, :destroy]

  # GET /integrations
  def index
    @integrations = Integration.all
  end

  # GET /integrations/1
  def show
  end

  # GET /integrations/new
  def new
    @integration = Integration.new
  end

  # GET /integrations/1/edit
  def edit
  end

  # POST /integrations
  def create
    @integration = Integration.new(integration_params)

    respond_to do |format|
      if @integration.save
        format.html { redirect_to @integration, notice: 'Integration was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /integrations/1
  def update
    respond_to do |format|
      if @integration.update(integration_params)
        format.html { redirect_to @integration, notice: 'Integration was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /integrations/1
  def destroy
    @integration.destroy
    respond_to do |format|
      format.html { redirect_to integrations_url, notice: 'Integration was successfully destroyed.' }
    end
  end

  private
    def set_integration
      @integration = Integration.find(params[:id])
    end

    def integration_params
      params.fetch(:integration).permit(:name, :description)
    end
end
