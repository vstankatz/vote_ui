class InformationController < ApplicationController

  def index
    render :index
  end

  def show
    @state_info = HTTParty.get('http://localhost:4567/states/130')
    render :show
  end
end
