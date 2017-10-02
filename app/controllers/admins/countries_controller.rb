class Admins::CountriesController < AdminsController
  before_action :authenticate_admin!
  before_action :set_country, only: [:show, :edit, :update, :destroy]
  layout 'admin'
  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    @country.save
    redirect_to dashboard_path
  end

  def index
    @countries = Country.all
  end

  def edit
    
  end

  def update
    @country.save(country_params)
    redirect_to admins_country_path
  end

  def destroy
    @country.destroy
    redirect_to admins_countries_path
  end

  private

  def country_params
    params.require(:country).permit(:name_ja,
                                            :name_en,
                                            :country_image,
                                            :currency,
                                            :language,
                                            :overview,
                                            :things_to_go,
                                            :when_to_go)
  end

  def set_country
    @country = Country.find(params[:id])
  end
end
