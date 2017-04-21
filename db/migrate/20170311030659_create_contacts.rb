class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :username
      t.string :email
      t.string :password
      t.integer :company_id

      t.timestamps
    end
  end
end
