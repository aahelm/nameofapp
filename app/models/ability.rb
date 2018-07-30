class Ability
  include CanCan::Ability
end

  def initialize(user)
    can :read, :all .
    if user.present?
      can :manage, Post, user_id: user.id
      if user.admin?
        can :manage, :all
      end
    end
  end
