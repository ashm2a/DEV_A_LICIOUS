class PagesController < ApplicationController
  before_action :authenticate_user!
  def profile
    @user = current_user
    @developers = current_user.developers
  end
end
