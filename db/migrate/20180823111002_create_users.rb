class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :user_name
      t.string :screen_name
      t.string :image_url
      t.boolean :is_admin

      t.timestamps
    end
  end
end
