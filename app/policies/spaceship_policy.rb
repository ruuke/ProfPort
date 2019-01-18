class SpaceshipPolicy < ApplicationPolicy

  def index?
    user.cosm? || user.comm?
  end

  def create?
    user.comm?
  end

  def edit?
    user.comm?
  end

  def update?
    user.comm?
  end

  def destroy?
    user.comm?
  end

  def show?
    user.cosm? || user.comm?
  end

end