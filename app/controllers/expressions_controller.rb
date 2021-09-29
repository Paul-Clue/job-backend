class ExpressionsController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false
  before_action :set_user, only: %i[show update]

  def expression
    @add = '+'
    @subtract = '-'
    @multiply = '*'
    @divide = '/'

    switch
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
