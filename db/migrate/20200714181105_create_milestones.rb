class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :title
      t.integer :kid_id
      t.integer :parent_id
      t.timestamps null: false
    end
  end
end
