class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.text :title
      t.integer :grade
      t.integer :user_id
      t.text :questions, array: true, default: []
      t.text :subject
      t.integer :points

      t.timestamps
    end
  end
end
