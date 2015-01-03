class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :number
      t.string :text
      t.string :answer
      t.string :options
      t.references :pool, index: true
      t.references :group, index: true

      t.timestamps
    end
  end
end
