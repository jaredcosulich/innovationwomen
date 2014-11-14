class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :phonenumber
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :ticket

      t.timestamps
    end
  end
end
