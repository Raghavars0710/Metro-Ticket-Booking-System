class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role == "Admin"
      can :read, Member
      can :manage, MetroService
      can :manage, Train
      can :read, Ticket
      can :read, User
    else
      can :manage, Member
      can :manage, User
      can [:read, :create], Ticket
      can :read, :metro_services
      can :read, :trains
      can :read, :tickets

    end
  end
end
