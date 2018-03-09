class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :date, :store, :amount
end
