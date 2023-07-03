class AddLabelToDecisions < ActiveRecord::Migration[7.0]
  def change
    add_column :decisions, :label, :string
  end
end
