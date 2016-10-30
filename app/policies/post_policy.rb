class PostPolicy < ApplicationPolicy

  def new?
    user.role_id == 3
  end

  def update?
  user.role_id == 3
  end

  def create?
    user.role_id == 3
  end
end