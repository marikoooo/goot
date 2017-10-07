class Admins::TravelJournalsController < AdminsController
  def index
    @journals = TravelJournal.all
  end

  def show
    @journal = TravelJournal.find(params[:id])
  end
end
