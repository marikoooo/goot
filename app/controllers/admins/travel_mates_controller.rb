class Admins::TravelMatesController < AdminsController
  def index
    @travelmates = TravelMate.all
  end

  def show
    @travelmate = TravelMate.find(params[:id])
  end
end
