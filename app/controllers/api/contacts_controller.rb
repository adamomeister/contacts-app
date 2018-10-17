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
    @contact.first_name = "Billy"
    @contact.last_name = "The Kid"
    @contact.email = "quickdraw@guns.com"
    @contact.phone_number = "nope"
    render "show.json.jbuilder"
  end
end
