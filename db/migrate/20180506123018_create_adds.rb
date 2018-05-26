class CreateAdds < ActiveRecord::Migration[5.2]
  def change
    create_table :adds do |t|
      t.string :name
      t.string :slug
      t.string :town
      t.string :local_area

      t.timestamps
    end
  end
end
