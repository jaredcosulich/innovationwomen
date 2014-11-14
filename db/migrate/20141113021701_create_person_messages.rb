class CreatePersonMessages < ActiveRecord::Migration
  def change
    create_table :person_messages do |t|
      t.integer :person_id
      t.integer :message_id

      t.timestamps
    end
  end
end
