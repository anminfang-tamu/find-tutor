class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :user_name
      t.string :display_name
      t.text :description
      t.string :major
      t.string :tutor_major
    end
  end
end
