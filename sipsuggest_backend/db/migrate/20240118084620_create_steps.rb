class CreateSteps < ActiveRecord::Migration[6.1]
  def change
    create_table :steps do |t|
      t.belongs_to :recipe, null: false, foreign_key: true
      t.integer :step_number
      t.text :instruction

      t.timestamps
    end
  end
end
