class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :title
      t.decimal :latitude
      t.decimal :longitude
      t.string :date
      t.timestamps
    end
  end
end
