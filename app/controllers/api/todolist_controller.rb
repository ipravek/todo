class Api::TodolistController < ApplicationController
  def index
    render json: { data: @user.todolists.active.map(&:to_objects) }
  end

  def create
    todo = @user.todolists.new name: params[:name]
    if todo.save
      render json: {message: 'todo created successfully'}, status: 200
    else
      render json: {error: todo.errors.full_messages}, status: 400
    end
  end
end