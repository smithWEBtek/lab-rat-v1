class CreateImageUploaders < ActiveRecord::Migration[5.0]
  def change
    create_table :image_uploaders do |t|
      t.string :upload 
      
      t.timestamps
    end
  end
end
