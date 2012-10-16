class DropVideosTable < ActiveRecord::Migration
  def up
    drop_table :videos
  end

  def down
    ActiveRecord::IrreversibleMigration
  end
end
