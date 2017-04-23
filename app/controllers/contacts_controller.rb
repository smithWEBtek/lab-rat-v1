class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  
  def detail
    contact = Contact.find_by_id(params[:id])
    render plain: contact.username
  end

  def index
    @contacts = Contact.all
    # render 'contacts/index', layout: false
    # render layout: false
    # render json: @contacts
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @contacts }
    end
  end

  def show
    @contact = Contact.find_by_id(params[:id])
    # render 'contacts/show', layout: false
    # render layout: false
    # render json: @contact
     respond_to do |format|
      format.html { render :show }
      format.json { render json: @contact }
    end
  end

  def new
    @contact = Contact.new
    # @company = Company.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:message] = 'Contact created.'
      redirect_to contact_path(@contact)
    else
      render :new
    end
  end

  def edit
    @contact = Contact.find_by_id(params[:id])
  end

  def update
    @contact = Contact.find_by_id(params[:id])
    @contact.update(contact_params)
    if @contact.save
      flash[:message] = 'Contact updated.'
      redirect_to contact_path(@contact)
    else
      render :edit
    end
  end

  def destroy
    @contact = Contact.find_by_id(params[:id])
    @contact.destroy
    redirect_to root_path
  end

  private
  def set_contact
    @contact = Contact.find_by_id(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:company_id, :username, :email, :password, :image)
  end
end