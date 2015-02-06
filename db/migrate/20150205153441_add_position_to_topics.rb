class AddPositionToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :position, :integer
    add_column :topics, :created_at, :datetime
    add_column :topics, :updated_at, :datetime
  end
end
