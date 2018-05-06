class CreateFics < ActiveRecord::Migration[5.1]
  def change
    create_table :fics do |t|
      t.string :title
      t.string :summary
      t.integer :user_id

      t.timestamps
    end
  end
end
