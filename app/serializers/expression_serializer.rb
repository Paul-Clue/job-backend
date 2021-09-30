# frozen_string_literal: true

class ExpressionSerializer < ActiveModel::Serializer
  attributes :id, :firstInt, :operation, :secondInt, :result
end
