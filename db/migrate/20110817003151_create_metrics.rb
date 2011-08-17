class CreateMetrics < ActiveRecord::Migration
  def self.up
    create_table :metrics do |t|
      t.string :format
      t.text :parameters
      t.string :user_agent
      t.string :path
      t.string :method
      t.string :remote_ip
      t.integer :user_id
      t.integer :session_id
      t.string :action
      t.string :controller
      t.integer :response_status
      t.datetime :when
      t.float :duration
      t.timestamps
    end
  end

  def self.down
    drop_table :metrics
  end
end
