class UpdateUserIdOnProfiles < ActiveRecord::Migration
  def change
    add_index :profiles, :user_id
    change_column_null :profiles, :user_id, false
  end
end
