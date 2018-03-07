class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :month, :store, :amount
end
