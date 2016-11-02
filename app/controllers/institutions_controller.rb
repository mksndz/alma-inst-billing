class InstitutionsController < SecureController

  load_and_authorize_resource

  # GET /institutions
  def index
    @institutions = Institution.all
  end

  # GET /institutions/1
  def show
  end

  # GET /institutions/new
  def new
    @institution = Institution.new
  end

  # GET /institutions/1/edit
  def edit
  end

  # POST /institutions
  def create
    @institution = Institution.new(institution_params)

    respond_to do |format|
      if @institution.save
        format.html { redirect_to @institution, notice: 'Institution was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /institutions/1
  def update
    respond_to do |format|
      if @institution.update(institution_params)
        format.html { redirect_to @institution, notice: 'Institution was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /institutions/1
  def destroy
    @institution.destroy
    respond_to do |format|
      format.html { redirect_to institutions_url, notice: 'Institution was successfully destroyed.' }
    end
  end

  private

    def institution_params
      params.fetch(:institution).permit(
          :name,
          :code,
          :address,
          :address2,
          :city,
          :state,
          :zip,
          :email,
          :phone,
          :api_key)
    end
end
