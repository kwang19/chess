class CreateChessplayers < ActiveRecord::Migration
  def change
    create_table :chessplayers do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :gender
      t.integer :uscf_id
      t.string :uscf_title
      t.integer :uscf_rating
      t.integer :fide_id
      t.string :fide_title
      t.integer :fide_rating
      t.string :federation

      t.timestamps

    end
  end
end
