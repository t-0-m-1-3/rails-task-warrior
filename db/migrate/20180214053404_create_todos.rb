class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :project
      t.text :description
      t.string :entry
      t.string :modified
      t.string :status
      t.text :tags
      t.string :urgency
      t.string :priority
      t.string :depends
      t.string :due
      t.string :end
      t.string :urgency
      t.string :uuid

      t.timestamps
    end
  end
end
