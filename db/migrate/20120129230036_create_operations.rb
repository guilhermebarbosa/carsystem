class CreateOperations < ActiveRecord::Migration
  def self.up
    create_table :operations do |t|
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :operations
  end
end
