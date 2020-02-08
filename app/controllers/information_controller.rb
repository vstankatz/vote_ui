class InformationController < ApplicationController

  def index
    @states_info = HTTParty.get("http://localhost:4567/states")
    @election_info = HTTParty.get("http://localhost:4567/voters")
    render :index
  end

  def show
    @state_info = HTTParty.get("http://localhost:4567/states/#{params[:id]}")
    render :show
  end
end
