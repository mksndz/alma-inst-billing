class Ability
  include CanCan::Ability

  def initialize(institution)

    if institution.god?
      can :manage, :all
    else
      can [:index, :show], Institution
      can :manage, Contact, institution_id: institution.id
    end

  end
end
