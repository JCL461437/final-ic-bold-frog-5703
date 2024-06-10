class GardensController < ApplicationController
  def show
    @garden = Garden.find(params[:id])
    @plants = @garden.harvests_in_less_than_100_days
  end
end