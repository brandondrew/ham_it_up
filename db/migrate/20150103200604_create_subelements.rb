class CreateSubelements < ActiveRecord::Migration
  def change
    create_table :subelements do |t|
      t.string :number
      t.string :description
      t.string :slug
      t.references :pool, index: true

      t.timestamps
    end
  end
end
