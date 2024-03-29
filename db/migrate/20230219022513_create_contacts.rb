class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name, null:false
      t.string :email, null:false
      t.string :phone, null:false
      t.boolean :active, null:false, default:true

      t.timestamps
    end
  end
end
