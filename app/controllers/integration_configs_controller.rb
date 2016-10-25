class IntegrationConfigsController < ApplicationController
  before_action :set_integration_config, only: [:show, :edit, :update, :destroy]

  # GET /integration_configs
  def index
    @integration_configs = IntegrationConfig.all
  end

  # GET /integration_configs/1
  def show
  end

  # GET /integration_configs/new
  def new
    @integration_config = IntegrationConfig.new
  end

  # GET /integration_configs/1/edit
  def edit
  end

  # POST /integration_configs
  def create
    @integration_config = IntegrationConfig.new(integration_config_params)

    respond_to do |format|
      if @integration_config.save
        format.html { redirect_to @integration_config, notice: 'Integration Config was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /integration_configs/1
  def update
    respond_to do |format|
      if @integration_config.update(integration_config_params)
        format.html { redirect_to @integration_config, notice: 'Integration Config was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /integration_configs/1
  def destroy
    @integration_config.destroy
    respond_to do |format|
      format.html { redirect_to integration_configs_url, notice: 'Integration Config was successfully destroyed.' }
    end
  end

  private
    def set_integration_config
      @integration_config = IntegrationConfig.find(params[:id])
    end

    def integration_config_params
      params.fetch(:integration_config).permit(:institution_id, :integration_id, :config)
    end
end
