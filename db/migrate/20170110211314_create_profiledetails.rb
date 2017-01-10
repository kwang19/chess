class CreateProfiledetails < ActiveRecord::Migration
  def change
    create_table :profiledetails do |t|
      t.integer :profiles_id
      t.string :photo
      t.string :events
      t.string :comment

      t.timestamps

    end
  end
end
