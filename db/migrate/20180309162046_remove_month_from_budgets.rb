class RemoveMonthFromBudgets < ActiveRecord::Migration[5.1]
  def change
    rename_column :budgets, :month, :date
  end
end
