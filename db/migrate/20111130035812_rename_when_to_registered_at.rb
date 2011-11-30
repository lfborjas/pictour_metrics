class RenameWhenToRegisteredAt < ActiveRecord::Migration
  def self.up
    rename_column :metrics, :when, :registered_at
  end

  def self.down
    rename_column :metrics, :registered_at, :when
  end
end
