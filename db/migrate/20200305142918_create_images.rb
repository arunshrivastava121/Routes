class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :image_name
      t.string :image_size

      t.timestamps
    end
  end
end
