require 'unirest'

# response = Unirest.post("localhost:3000/api/contacts")

#response = Unirest.delete("localhost:3000/api/contacts/105")

response = Unirest.patch("localhost:3000/api/contacts/104",
  parameters: {
      input_first_name: "something",
      input_last_name: "or other",
      input_email: "aaaaa@emial.com",
      input_phone_number: "5555555555",
    }
  )


p response.body