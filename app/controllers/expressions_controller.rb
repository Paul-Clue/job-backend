# rubocop:disable all
class ExpressionsController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false
  before_action :set_user, only: %i[show update]

  def expression
    if params[:firstInt] == '' || params[:secondInt] == ''
      render json: { error: 'Please fill in all fields!' }, status: :unauthorized
    else
      @first_Int = params[:firstInt].to_i
      @second_Int = params[:secondInt].to_i

      case params[:operation]
      when '+'
        @sum = @first_Int + @second_Int
        @express = Expression.new(user_params)
        @express.result = @sum
        if @express.save
          render json: { Expression: ExpressionSerializer.new(@express) }, status: :created
        else
          render json: { error: 'failed to calculate expression' }, status: :unauthorized
        end
      when '-'
        @difference = @first_Int - @second_Int
        @express = Expression.new(user_params)
        @express.result = @difference
        if @express.save
          render json: { Expression: ExpressionSerializer.new(@express) }, status: :created
        else
          render json: { error: 'failed to calculate expression' }, status: :unauthorized
        end
      when '*'
        @product = @first_Int * @second_Int
        @express = Expression.new(user_params)
        @express.result = @product
        if @express.save
          render json: { Expression: ExpressionSerializer.new(@express) }, status: :created
        else
          render json: { error: 'failed to calculate expression' }, status: :unauthorized
        end
      when '/'
        @quotient = @first_Int / @second_Int
        @express = Expression.new(user_params)
        @express.result = @quotient

        if @express.save
          render json: { Expression: ExpressionSerializer.new(@express) }, status: :created
        else
          render json: { error: 'failed to calculate expression' }, status: :unauthorized
        end
      else
        render json: { error: 'Please select an operator!' }, status: :unauthorized
      end
    end
  end

  def show; end

  def update; end

  private

  def user_params
    params.permit(:firstInt, :operation, :secondInt)
  end
end
