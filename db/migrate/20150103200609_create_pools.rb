class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :number
      t.string :description
      t.string :slug
      t.string :source
      t.json :source_trail

      t.timestamps
    end
  end
end
