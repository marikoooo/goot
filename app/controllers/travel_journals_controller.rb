class TravelJournalsController < ApplicationController
  before_action :authenticate_user_admin, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_travel_journal, only: [:show, :edit, :update, :destroy]

  def index
    @journals = TravelJournal.where(status: :published)
  end

  def show
    
  end

  def new
    @journal = TravelJournal.new
  end

  def create
    @journal = TravelJournal.new(journal_params)
    @journal.save
    redirect_to mypage_path(current_user.id)
  end

  def edit
    
  end

  def update
    @journal.update(journal_params)
    redirect_to mypage_path
  end

  def destroy
    @journal.destroy
    redirect_to mypage_path(current_user.id)
  end

  private

  def journal_params
    params.require(:travel_journal).permit(:title, :content, :status, :journal_image, :country_id, :user_id)
  end

  def set_travel_journal
    @journal = TravelJournal.find(params[:id])
  end


end
