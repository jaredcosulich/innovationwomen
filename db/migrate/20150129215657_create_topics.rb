class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.references :profile, index: true
      t.string :title
      t.text :description
    end
  end
end
