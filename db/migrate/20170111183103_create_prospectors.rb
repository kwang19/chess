class CreateProspectors < ActiveRecord::Migration
  def change
    create_table :prospectors do |t|
      t.integer :user_id
      t.string :name

      t.timestamps

    end
  end
end
