class BookingPolicy < ApplicationPolicy
  attr_reader :user, :record

  def new?
    true
  end

  def create?
    true
  end

  def accept?
    true
  end

  def refuse?
    true
  end
end
