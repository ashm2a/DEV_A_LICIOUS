class ReviewsController < ApplicationController
  before_action :set_developer, only: [:index, :new, :create]

  def index
    @reviews = Review.where(developer_id: @developer)
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find_by(user_id: current_user.id, developer_id: @developer.id)
    if @review.save
      redirect_to developer_path(@developer)
    else
      render 'developers/show', status: :unprocessable_entity
    end
    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_developer
    @developer = Developer.find(params[:developer_id])
  end
end
