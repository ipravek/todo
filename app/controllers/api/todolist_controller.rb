class Api::TodolistController < ApplicationController
  def index
    render json: { list: Todolist.all }
  end
end