class TravelMatesController < ApplicationController
  before_action :authenticate_user_admin, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_travel_mate, only: [:show, :edit, :update, :destroy]

  def index
    @travelmates = TravelMate.all.order(created_at: :desc)
  end

  def new
    @travelmate = TravelMate.new
  end

  def create
    @travelmate = TravelMate.new(travel_mate_params)
    @travelmate.save
    redirect_to travel_mate_path(@travelmate.id)
  end

  def show
    
  end

  def edit
    
  end

  def update
    @travelmate.update(travel_mate_params)
    reidrect_to travel_mate_path(@travelmate.id)
  end

  def destroy
    @travelmate.destroy
  end

  private

  def set_travel_mate
    @travelmate = TravelMate.find(params[:id])
  end

  def travel_mate_params
    params.require(:travel_mate).permit(:title,
                                                  :content,
                                                  :destination,
                                                  :recruitment_number,
                                                  :departure_date,
                                                  :return_date,
                                                  :user_id)
  end
end