module Mutations
  class CreateContact < BaseMutation
    # TODO: define arguments
    argument :name, String, required: true
    argument :email, String, required: true
    argument :phone, String, required: true
    # argument :name, String, required: true

    type Types::ContactType

    # TODO: define resolve method
    def resolve(name: nil, email: nil, phone: nil)
      Contact.create!(
        name: name,
        email: email,
        phone: phone,
      )
    end
    # def resolve(name:)
    #   { post: ... }
    # end
  end
end
