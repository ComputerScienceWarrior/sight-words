class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :username
      t.text :password_digest
      t.text :email
      t.integer :school_grade

      t.timestamps
    end
  end
end
