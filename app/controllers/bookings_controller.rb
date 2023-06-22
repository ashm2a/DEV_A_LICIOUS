class BookingsController < ApplicationController
  before_action :set_booking, only: [:accept, :refuse]
  before_action :set_developer, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.developer = @developer
    @booking.user = current_user
    if @booking.save
      redirect_to user_profile_path(current_user)
    else
      render :new
    end
    authorize @booking
  end

  def accept
    @booking.status = "accepté"
    if @booking.save
      redirect_to user_profile_path(current_user)
    else
      render :new
    end
    authorize @booking
  end

  def refuse
    @booking.status = "refusé"
    if @booking.save
      redirect_to user_profile_path(current_user)
    else
      render :new
    end
    authorize @booking
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_developer
    @developer = Developer.find(params[:developer_id])
  end

  def booking_params
    params.require(:booking).permit(:date_begin, :date_end)
  end
end
