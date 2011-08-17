class ChangeSessionIdToString < ActiveRecord::Migration
  def self.up
    change_column :metrics, :session_id, :string
  end

  def self.down
    change_column :metrics, :session_id, :integer
  end
end
