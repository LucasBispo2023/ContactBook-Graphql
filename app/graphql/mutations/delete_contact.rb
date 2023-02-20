    module Mutations
        class DeleteContact < BaseMutation
            argument :id, Integer, required: true

            type Types::ContactType

            def resolve(id: nil)
                selectedContact = Contact.find(id)
                if selectedContact
                    selectedContact.destroy
                end
                selectedContact
            end
        end
    end