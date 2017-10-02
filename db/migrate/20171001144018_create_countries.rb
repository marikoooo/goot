class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name_ja
      t.string :name_en
      t.string :country_image
      t.string :currency
      t.string :language
      t.text :overview
      t.text :things_to_go
      t.text :when_to_go

      t.timestamps
    end
  end
end
