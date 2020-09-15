class Ability
  include CanCan::Ability

  def initialize(user)

    if user
      # these can be shortened to:
      # can [:new, :create], Bra
      # can [:new, :create], BraSize
      can :new, Bra
      can :create, Bra
      can :new, BraSize
      can :create, BraSize
      can :create, Review

      can :update, Bra do |bra|
        # I believe part of your issue with the authorization allowing update
        # by any user is that authorization runs before the action finishes
        # running if you use 'load_and_authorize' resource. Thus, when this
        # block runs, @non_tags hasn't been defined, and this it's nil. Thus
        # !@non_tags returns true, which means anyone can update bra.

        # the fix would be to make an explicit separate action 'update_tags'
        # which has separate auth conditions, and to simplify this one to not
        # depend on the instance variable.
        :user_id == user.id || !@non_tags
      end

      can [:update, :destroy], BraSize, :user_id => user.id
      can :destroy, Bra , :user_id => user.id
      can [:update, :destroy], Review, :user_id => user.id
    end

  end
end
