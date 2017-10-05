class CreateTravelJournals < ActiveRecord::Migration[5.1]
  def change
    create_table :travel_journals do |t|
      t.string :title
      t.text :content
      t.string :journal_image
      t.boolean :status, default: false
      t.references :country, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
