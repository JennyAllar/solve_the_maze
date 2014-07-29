class CreateMazes < ActiveRecord::Migration
  def change
    create_table :mazes do |t|
      t.text :maze
    end
  end
end
