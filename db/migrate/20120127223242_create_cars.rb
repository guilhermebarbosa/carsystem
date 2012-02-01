class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.references :brand
      t.references :carmodel
      t.string :name
      t.decimal :price, :precision => 10, :scale => 2
      t.integer :year
      t.string :telephone
      t.string :state
      t.text :description
      t.string :km
      t.text :note
      t.boolean :highlight

      t.timestamps
    end
  end

  def self.down
    drop_table :cars
  end
end
