class AddTitleToHome < ActiveRecord::Migration[5.1]
  def change
    add_column :homes, :title, :string
  end
end
