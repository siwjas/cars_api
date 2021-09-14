class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :engine
      t.string :cambio
      t.string :fuel
      t.float :price
      t.integer :year
      t.references :manufacturer, manufacturer: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
