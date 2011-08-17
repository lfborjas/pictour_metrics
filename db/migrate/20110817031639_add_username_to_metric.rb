class AddUsernameToMetric < ActiveRecord::Migration
  def self.up
    add_column :metrics, :username, :string
  end

  def self.down
    remove_column :metrics, :username
  end
end
