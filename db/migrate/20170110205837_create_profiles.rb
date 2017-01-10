class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :chessplayer_id
      t.string :profile_photo
      t.string :summary

      t.timestamps

    end
  end
end
