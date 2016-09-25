class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :url
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
