class AddPhotoToInfo < ActiveRecord::Migration[7.0]
  def change
    add_column :infos, :photo_url, :string
  end
end
