class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :location
      t.string :title
      t.string :industry
      t.string :company
      t.string :twitter
      t.string :linkedin
      t.string :website
      t.text :description
      t.string :video
      t.text :company_description
      t.text :super_hero_origin_story
      t.text :passion

      t.timestamps
    end
  end
end
