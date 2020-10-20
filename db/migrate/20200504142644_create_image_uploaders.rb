class CreateImageUploaders < ActiveRecord::Migration[6.0]
  def change
    create_table :image_uploaders do |t|
      t.string :name
      t.string :email
      t.string :avtar

      t.timestamps
    end
  end
end
