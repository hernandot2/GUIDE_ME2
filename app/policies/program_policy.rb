class ProgramPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def edit?
    set_user_scope
    true
  end

  def destroy?
    owner?
  end

  private

  def owner?
    record.user == user
  end

  def set_user_scope
    @user = user
    @record = record
  end
end
