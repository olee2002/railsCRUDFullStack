class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.string :phone_numbers
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
