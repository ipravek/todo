class Api::TodolistController < Api::ApiController
  def index
    render json: { list: Todolist.all }
  end
end