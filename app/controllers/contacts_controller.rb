class ContactsController < ApplicationController
  before_filter [:load_search], :only=>[:new, :create]

  # GET /contacts/new
  # GET /contacts/new.xml
  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contact }
    end
  end

  # POST /contacts
  # POST /contacts.xml
  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        ContactMail.contact_send(@contact).deliver
        format.html { redirect_to(root_path, :notice => 'Contato realizado com sucesso!') }
      else
        format.html { render :action => "new" }
      end
    end
  end
  
  def load_search
    @search = Car.search(params[:search])
    @carmodels = Array.new
  end
end
