class CreateVids < ActiveRecord::Migration[8.0]
  def change
    create_table :vids do |t|
      t.integer :user_id
      t.integer :city_id
      t.integer :device_id
      t.integer :activity_id
      t.string :myvid
      t.string :content

      t.timestamps
    end
  end
end
