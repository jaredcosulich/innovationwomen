class RenameProfilesToSpeakerProfiles < ActiveRecord::Migration
  def change
    rename_table :profiles, :speaker_profiles
  end
end
