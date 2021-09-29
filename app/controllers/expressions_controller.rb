class ExpressionsController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false
  before_action :set_user, only: %i[show update]

  def expression
    @firstInt = params[:firstInt].to_i
    @secondInt = param[:secondInt].to_i

    case params[:operation]
    when '+'
      @sum = @firsInt+@secondInt
      @express = Expression.create(firstInt: params[:firstInt], operator: params[operator], secondInt: params[secondInt], result: @sum)
      if @express.save
        render json: { Expression: ExpressionSerializer.new(@express) }, status: :created
      # render json: @user, status: :created
      else
        render json: { error: 'failed to calculate expression' }, status: :unauthorized
      end
    when '-'
      @difference = @firsInt-@secondInt
      @express = Expression.create(firstInt: params[:firstInt], operator: params[operator], secondInt: params[secondInt], result: @difference)
      if @express.save
        render json: { Expression: ExpressionSerializer.new(@express) }, status: :created
      # render json: @user, status: :created
      else
        render json: { error: 'failed to calculate expression' }, status: :unauthorized
      end
    when '*'
      @product = @firsInt*@secondInt
      @express = Expression.create(firstInt: params[:firstInt], operator: params[operator], secondInt: params[secondInt], result: @product)
      if @express.save
        render json: { Expression: ExpressionSerializer.new(@express) }, status: :created
      # render json: @user, status: :created
      else
        render json: { error: 'failed to calculate expression' }, status: :unauthorized
      end
    when '/'
      @quotient = @firsInt/@secondInt
      @express = Expression.create(firstInt: params[:firstInt], operator: params[operator], secondInt: params[secondInt], result: @quotient)
      if @express.save
        render json: { Expression: ExpressionSerializer.new(@express) }, status: :created
      # render json: @user, status: :created
      else
        render json: { error: 'failed to calculate expression' }, status: :unauthorized
      end
    else
      render json: { error: 'failed to calculate expression' }, status: :unauthorized
    end
  end

  def show
  end

  def update
  end

  private

  def user_params
    params.require(:expression).permit(:firstInd, :operation, :secondInt)
    # params.permit(:firstInd, :operation, :secondInt)
  end
end
