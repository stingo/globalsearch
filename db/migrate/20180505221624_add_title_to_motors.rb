class AddTitleToMotors < ActiveRecord::Migration[5.2]
  def change
    add_column :motors, :title, :string
    add_column :motors, :slug, :string
  end
end
