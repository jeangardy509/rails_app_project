class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.string :month
      t.string :store
      t.integer :amount

      t.timestamps
    end
  end
end
