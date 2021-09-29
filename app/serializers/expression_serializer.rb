class ExpressionSerializer < ActiveModel::Serializer
  attributes :id, :firstInt, :operation, secondInt, :result
end
