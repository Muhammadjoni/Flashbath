class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

<<<<<<< HEAD
=======
  def top?
    return true
  end
>>>>>>> 844bff07c5802fc5fc1943ea2393e0f84603af88
end
