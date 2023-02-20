module Types
  class MutationType < Types::BaseObject
    field :create_contact, mutation: Mutations::CreateContact
    field :update_contact, mutation: Mutations::UpdateContact
    field :delete_contact, mutation: Mutations::DeleteContact
    # TODO: remove me

  end
end
