class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :location
      t.string :title
      t.string :industry
      t.string :company
      t.text :description
      t.string :twitter
      t.string :linkedin
      t.string :website
      t.integer :user_id

      t.timestamps
    end
  end
end
