class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :child_fname
      t.string :child_mname
      t.string :child_lname
      t.date :birthday
      t.integer :weight_lbs
      t.integer :weight_oz
      t.integer :height
      t.string :parent1_fname
      t.string :parent1_lname
      t.string :parent2_fname
      t.string :parent2_lname
      t.timestamps null: false
    end
  end
end
