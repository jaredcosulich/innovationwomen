class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :title
      t.string :company
      t.string :location
      t.string :linkedin
      t.string :twitter
      t.string :website
      t.string :blog_url
      t.text   :keywords
      t.integer :industry
      t.text :summary
      t.text :origin_story
      t.text :passion
      t.text :best_story
      t.integer :travel_distance
      t.integer :charge
      t.string :video
      t.boolean :featured, default: false
      

      t.timestamps
    end
  end
end
