class CreateSocialActions < ActiveRecord::Migration[5.2]
  def change
    create_table :social_actions do |t|
      t.string :title
      t.integer :charity_id
      t.text :summary
      t.string :img_url

      t.timestamps
    end
  end
end
