class CreateTravelMates < ActiveRecord::Migration[5.1]
  def change
    create_table :travel_mates do |t|
      t.string :title
      t.text :content
      t.string :destination
      t.integer :recruitment_number
      t.date :departure_date
      t.date :return_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
