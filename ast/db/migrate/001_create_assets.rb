class CreateAssets < ActiveRecord::Migration

  
  def self.up
    create_table :assets do |t|
      t.string :name
      t.integer :colo_id
      t.integer :resource_id
      t.string :resource_type
      
      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
