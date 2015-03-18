class CreateSpeakerProfiles < ActiveRecord::Migration
  def change
    create_table :speaker_profiles do |t|

      t.timestamps null: false
    end
  end
end
