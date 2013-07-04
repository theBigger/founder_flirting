class CreateBuzzs < ActiveRecord::Migration
  def change
    create_table :buzzs do |t|
      t.string :content

      t.timestamps
    end
  end
end
