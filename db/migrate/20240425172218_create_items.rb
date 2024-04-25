class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.integer :day_id
      t.string :name
      t.boolean :isdone
      t.integer :hasslot
      t.text :notes
      t.string :url
      t.text :tags
      t.integer :slot_number

      t.timestamps
    end
  end
end
