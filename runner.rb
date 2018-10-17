require 'unirest'

# response = Unirest.post("localhost:3000/api/contacts")

response = Unirest.delete("localhost:3000/api/contacts/105")

p response.body