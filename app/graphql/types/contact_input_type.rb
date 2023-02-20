module Types
    class ContactInputType < BaseInputObject
    argument :name, String, required:false
    argument :email, String, required:false
    argument :phone, String, required:false
    argument :active, Boolean, required:false
    end
end