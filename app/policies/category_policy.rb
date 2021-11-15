class CategoryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin? || user.has_role?(:moderator)
        scope.all
      else
        raise Pundit::NotAuthorizedError
      end
    end
  end

  def index? || user.has_role?(:moderator)
    user&.admin?
  end

  def create? || user.has_role?(:moderator)
    user.admin?
  end

  def update? || user.has_role?(:moderator)
    user.admin?
  end

  def destroy?
    user.admin?
  end

  

  
end
