class CreateInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :infos do |t|
      t.string :title
      t.string :category
      t.text :favoritepart
      t.string :author

      t.timestamps
    end
  end
end
