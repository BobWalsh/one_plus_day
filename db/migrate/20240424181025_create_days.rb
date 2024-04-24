class CreateDays < ActiveRecord::Migration[7.1]
  def change
    create_table :days do |t|
      t.string :name
      t.datetime :theday
      t.text :tags
      t.boolean :isdone
      t.references :hasZitems
      t.timestamps
    end

  end
end
