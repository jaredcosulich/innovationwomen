class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.timestamp :send_at
      t.timestamp :completed_at

      t.timestamps
    end
  end
end
