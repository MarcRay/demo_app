class CreateMicromessages < ActiveRecord::Migration
  def self.up
    create_table :micromessages do |t|
      t.string :contenu
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :micromessages
  end
end
