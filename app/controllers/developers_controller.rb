class DevelopersController < ApplicationController
  before_action :set_developer, only: [:show, :edit, :update, :destroy]

  def index
    @developers = policy_scope(Developer)
  end

  def show
    authorize @developper
  end

  def new
    @developer = Developer.new
    authorize @developer
  end

  def create
    authorize @developer
    @developer = Developer.new(developer_params)
    @developer.user = current_user
    @developer.save
    redirect_to developer_path(@developer)
  end

  def edit
    authorize @developer
   end

  def update
    authorize @developer
    @developer.update!(developer_params)
    redirect_to developer_path(@developer)
  end

  def destroy
    authorize @developer
    @developer.destroy
    redirect_to developers_path, status: :see_other
  end

  private

  def set_developer
    @developer = Developer.find(params[:id])
  end

  def developer_params
    params.require(:developer).permit(:first_name, :last_name, :description, :city, :image_url, :price_per_day)
  end
end
