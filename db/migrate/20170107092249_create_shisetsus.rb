class CreateShisetsus < ActiveRecord::Migration[5.0]
  def change
    create_table :shisetsus do |t|
      t.string :title
      t.string :category
      t.string :yomi
      t.string :postal_code
      t.string :address
      t.string :building
      t.string :floor
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
