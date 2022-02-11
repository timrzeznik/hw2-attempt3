class CreateCasts < ActiveRecord::Migration[7.0]
  def change
    create_table :casts do |t|
      t.string :title
      t.string :actor
      t.string :character

      t.timestamps
    end
  end
end
