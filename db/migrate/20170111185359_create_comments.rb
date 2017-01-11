class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :prospector_id
      t.integer :chessplayer_id
      t.text :content

      t.timestamps

    end
  end
end
