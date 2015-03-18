class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.belongs_to :user, index: true, null: false
      t.belongs_to :role, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :user_roles, :users
    add_foreign_key :user_roles, :roles
  end
end
