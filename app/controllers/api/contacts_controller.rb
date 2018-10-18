class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.json.jbuilder"
  end
  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "show.json.jbuilder"
  end
  def create
    @contact = Contact.new(first_name: "that_one_guy", last_name: "something_or_other", email: "someguy@email.com", phone_number: "555-555-5555")
    @contact.save
    render "show.json.jbuilder"
  end
  def update
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.first_name = params[:input_first_name] || @contact.first_name
    @contact.last_name = params[:input_last_name] || @contact.last_name
    @contact.email = params[:input_email] || @contact.email
    @contact.phone_number = params[:input_phone_number] || @contact.phone_number
    @contact.save
    render "show.json.jbuilder"
  end
  def delete
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    @contact.destroy
    render "destroy.json.jbuilder"
  end
end
