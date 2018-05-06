class AdAttributesToMotors < ActiveRecord::Migration[5.2]
  def change
    add_column :motors, :town, :string
    add_column :motors, :local_area, :string
  end
end
