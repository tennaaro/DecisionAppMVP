class RemoveResultFromDecision < ActiveRecord::Migration[7.0]
  def change
    remove_column :decisions, :result
  end
end
