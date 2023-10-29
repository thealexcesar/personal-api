class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users.select(:id, :email)
  end

  def show
    user = User.find_by_id(params[:id])
    render json: user
  end
end