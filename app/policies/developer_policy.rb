class DeveloperPolicy < ApplicationPolicy
  class Scope < Scope
    attr_reader :query

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if query.present?
        scope.where("first_name LIKE :query OR last_name LIKE :query", query: "%#{query}%")
      else
        scope.all
      end
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
