class CreateInternalDatabaseModels < ActiveRecord::Migration
  def self.up
    create_table :internal_database_models do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :internal_database_models
  end
end
