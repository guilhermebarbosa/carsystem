class CreateProposals < ActiveRecord::Migration
  def self.up
    create_table :proposals do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.text :description
      t.boolean :finance
      t.boolean :exchange

      t.timestamps
    end
  end

  def self.down
    drop_table :proposals
  end
end
