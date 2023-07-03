class CreateDecisions < ActiveRecord::Migration[7.0]
  def change
    create_table :decisions do |t|
      t.string :input
      t.string :input_type
      t.string :result
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
