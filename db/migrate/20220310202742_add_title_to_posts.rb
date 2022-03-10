class AddTitleToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :title, :string
    add_column :posts, :description, :string
    add_column :posts, :price, :string
    add_column :posts, :email, :string
    add_column :posts, :phone, :string
  end
end
