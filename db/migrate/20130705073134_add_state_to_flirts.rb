class AddStateToFlirts < ActiveRecord::Migration
  def change
    add_column :flirts, :state, :string
  end
end
