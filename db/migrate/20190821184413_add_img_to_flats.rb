class AddImgToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :img_url, :string
  end
end
