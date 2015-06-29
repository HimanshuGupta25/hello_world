class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params["id"])
  end
  def create
    contact_params = params[:contact].permit(:title, :address, :phone , :email , :web ,:contents)
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        format.html { redirect_to(entries_path(@contact), notice: 'User was successfully updated.' ) }
        format.json { render :show, status: :ok, location: @contact }
        format.js
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end
  def edit
    @contact = Contact.find(params["id"])
  end
  def update
    contact_params = params[:contact].permit(:title, :address, :phone , :email , :web ,:contents)
    @contact = Contact.find(params["id"])
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to(entries_path(@contact), notice: 'User was successfully updated.' ) }
        format.json { render :show, status: :ok, location: @contact }
        format.js
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end
  def destroy
    contact = Contact.find(params["id"])
    @contact= Contact.destroy(research)
    respond_to do |format|
      format.html { redirect_to(entries_path(@contact), notice: 'User was successfully updated.' ) }
      format.json { render :show, status: :ok, location: @contact }
      format.js
    end
  end
end
