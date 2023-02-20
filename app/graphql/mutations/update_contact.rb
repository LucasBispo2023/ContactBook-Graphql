module Mutations
    class UpdateContact < BaseMutation
        argument :id, Integer, required: true
        argument :input, Types::ContactInputType , required:true

        type Types::ContactType

        def resolve(id:nil, input:nil)
            contact = Contact.find(id)
            contact.name = input.name if input.name
            contact.email = input.email if input.email
            contact.phone = input.phone if input.phone
            contact.active = input.active if input.active
            contact.save

            { id: contact.id, name: contact.name, email: contact.email, phone: contact.phone, active: contact.active }
        end
    end
end