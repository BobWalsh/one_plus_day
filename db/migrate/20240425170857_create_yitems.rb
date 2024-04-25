class CreateYitems < ActiveRecord::Migration[7.1]
  def change
    create_table :yitems do |t|
      t.integer :day_id
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
