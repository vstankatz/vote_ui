class InformationController < ApplicationController

  def index
    @state_info = HTTParty.get('http://localhost:4567/states/57')
    # @body = JSON.parse(@state_info.body)
    render :index
  end

  # def state
  # end
end
