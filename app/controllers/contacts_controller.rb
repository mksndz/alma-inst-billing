class ContactsController < SecureController
  before_action :set_institution

  load_and_authorize_resource

  # GET /contacts
  def index
    raise CanCan::AccessDenied unless can? :edit, @institution
    @contacts = Contact.where institution_id: @institution.id
  end

  # GET /contacts/1
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)

    @contact.institution = @institution

    respond_to do |format|
      if @contact.save
        format.html { redirect_to institution_contact_path(@institution, @contact), notice: 'Contact was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /contacts/1
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to institution_contact_path(@institution, @contact), notice: 'Contact was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /contacts/1
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to institution_contacts_path(@institution), notice: 'Contact was successfully destroyed.' }
    end
  end

  private

  def set_institution
      @institution = Institution.find(params[:institution_id])
    end

    def contact_params
      params.fetch(:contact).permit(
          :first_name,
          :last_name,
          :address,
          :address2,
          :zip,
          :city,
          :state,
          :phone,
          :email,
          :branch_campus,
      )
    end
end
