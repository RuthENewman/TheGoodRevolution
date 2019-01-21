class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :social_action_id
      t.datetime :when
      t.string :location
      t.string :img_url

      t.timestamps
    end
  end
end
