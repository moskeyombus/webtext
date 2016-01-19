class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.superadmin?
      can :manage, :users
    end
  end
end
