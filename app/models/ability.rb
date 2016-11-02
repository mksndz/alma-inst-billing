class Ability
  include CanCan::Ability

  def initialize(user)

    if user.god?
      can :manage, :all
    else
      can [:index, :show], Institution
      can [:edit, :update], Institution, id: user.id
      can :index, Contact
      can [:show, :new, :create, :edit, :update, :destroy], Contact, institution_id: user.id
    end

  end
end
