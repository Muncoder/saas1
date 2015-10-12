class CreateCreateContacts < ActiveRecord::Migration
  def change
    create_table :create_contacts do |t|
      t.string :name
      t.string :email
      t.text :comments

      t.timestamps null: false
    end
  end
end
