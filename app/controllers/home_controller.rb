class HomeController < ApplicationController
  skip_before_action :authorized

  def index
    render json: { msg: 'hello world' }
  end
end
