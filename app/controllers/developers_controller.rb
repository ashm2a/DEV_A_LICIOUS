class DevelopersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_developer, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @developers = policy_scope(Developer).where("first_name LIKE :query OR last_name LIKE :query", query: "%#{params[:query]}%")
    else
      @developers = policy_scope(Developer)
    end
    @markers = Developer.geocoded.map do |developer|
      {
        lng: developer.longitude,
        lat: developer.latitude
      }
  end

  def show
    authorize @developer
  end

  def new
    @developer = Developer.new
    authorize @developer
  end

  def create
    @developer = Developer.new(developer_params)
    @developer.user = current_user
    if @developer.save
    redirect_to developer_path(@developer)
    else
      render :new
    end
    authorize @developer
  end

  def edit
    authorize @developer
  end

  def update
    @developer.update!(developer_params)
    redirect_to developer_path(@developer)
    authorize @developer
  end

  def destroy
    @developer.destroy
    redirect_to developers_path, status: :see_other
    authorize @developer
  end

  private

  def set_developer
    @developer = Developer.find(params[:id])
  end

  def developer_params
    params.require(:developer).permit(:first_name, :last_name, :description, :city, :image_url, :price_per_day, :photo)
  end
end
