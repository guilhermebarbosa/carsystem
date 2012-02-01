class AddColumnCarIdToProposals < ActiveRecord::Migration
  def self.up
    add_column :proposals, :car_id, :integer
  end

  def self.down
    remove_column :proposals, :car_id
  end
end
