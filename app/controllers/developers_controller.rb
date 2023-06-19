class DevelopersController < ApplicationController
  before_action :set_developer, only: [:show, :edit, :update, :destroy]

  def index
    @developers = Developer.all
  end

  def show; end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developer_params)
    @developer.save
    redirect_to developer_path(@developer)
  end

  def edit; end

  def update
    @developer.update!(developer_params)
    redirect_to developer_path(@developer)
  end

  def destroy
    @developer.destroy
    redirect_to developers_path, status: :see_other
  end

  private

  def set_developer
    @developer = Developer.find(params[:id])
  end

  def developer_params
    params.require(:developer).permit(:first_name, :last_name, :description, :city, :url_picture, :price_per_day)
  end
end
