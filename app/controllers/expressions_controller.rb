class ExpressionsController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false
  before_action :set_user, only: %i[show update]

  def expression
    @firstInt = params[:firstInt].to_i 
    @secondInt = param[:secondInt].to_i 

    case params[:operation]
    when '+'
      @sum = @firsInt+@secondInt
    when '-'
      @difference = @firstInt-@secondInt
    when '*'
      @product = @firsInt*@secondInt
    when '/'
      @quotient = @firsInt/@secondInt
    else
      puts 'Only single-digit numbers are allowed'
    end
  end

  def show
  end

  def update
  end

  private

  def user_params
    # params.require(:expression).permit(:username, :password, :email)
    params.permit(:firstInd, :operation, :secondInt)
  end
end
