class Ability
  include CanCan::Ability

  def initialize(user)

    if user
      can :new, Bra
      can :create, Bra
      can :new, BraSize
      can :create, BraSize
      can :create, Review

      can [:update, :destroy], BraSize, :user_id => user.id
      can [:update, :destroy], Bra, :user_id => user.id
      can [:update, :destroy], Review, :user_id => user.id
    end

  end
end
