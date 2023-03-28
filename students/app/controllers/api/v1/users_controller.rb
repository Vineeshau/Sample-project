# frozen_string_literal: true

class Api::V1::UsersController < ApplicationController
  before_action :authorize_request
  before_action :authorize_request, except: :create
  before_action :find_user, except: %i[show]
  before_action :admin, only: %i[create index show update destroy]

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def show
    render json: @users, status: :ok
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    unless @user.update(user_params)
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private

  def find_user
    @user = User.find_by_username!(params[:_username])
    rescue ActiveRecord::RecordNotFound
      render json: { errors: 'User not found' }, status: :not_found
  end

  def user_params
    params.permit(:avatar, :name, :username, :email, :password, :password_confirmation, :role)
  end

  def admin
    @permission = @current_user.role
    if @permission == 's' || @permission == 't'
      render json: { message: "You have no permissions!!"}, status: :unauthorized
    end
  end
end
