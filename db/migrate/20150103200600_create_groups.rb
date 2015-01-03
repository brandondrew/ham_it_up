class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :number
      t.string :description
      t.references :subelement, index: true
      t.string :slug

      t.timestamps
    end
  end
end
