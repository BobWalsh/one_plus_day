class CreateZitem < ActiveRecord::Migration[7.1]
  def change
    create_table :zitems do |t|
      t.timestamps
      t.string :name
      t.string :description
      t.text :tags
      t.boolean :isdone
      t.boolean :isduplicate
      t.string :thedate
    end
  end
end
