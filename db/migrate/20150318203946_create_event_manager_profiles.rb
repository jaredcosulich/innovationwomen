class CreateEventManagerProfiles < ActiveRecord::Migration
  def change
    create_table :event_manager_profiles do |t|

      t.timestamps null: false
    end
  end
end
