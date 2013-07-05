class CreateFlirts < ActiveRecord::Migration
  def change
    create_table :flirts do |t|
      t.integer :from_user_id
      t.integer :to_user_id
      t.integer :project_id

      t.timestamps
    end
  end
end
