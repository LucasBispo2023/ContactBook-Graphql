module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :all_contacts, [Types::ContactType]
    # TODO: remove me
    def all_contacts
       Contact.all
    end

  end
end
