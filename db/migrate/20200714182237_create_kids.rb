class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :child_name
      t.date :birthday
      t.integer :weight
      t.integer :height

      t.timestamps null: false
    end
  end
end
