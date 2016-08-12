class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  before_action :set_institution

  # GET /contacts
  def index
    @contacts = Contact.all
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
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

  def set_institution
      @institution = Institution.find(params[:institution_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.fetch(:contact).permit(:name, :address, :phone, :email)
    end
end
