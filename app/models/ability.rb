class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role == "Admin"
      can [:update, :destroy, :read], User, id: user.id
      can :read, Member
      can :manage, MetroService
      can :manage, Train
      can :manage, Ticket
    elsif user.role == "Passenger"
      can :manage, User, id: user.id
      can :manage, Member, user_id: user.id
      can :manage, Ticket, user_id: user.id
      can :manage, MetroService
      can :read, Train
    else
      can :read, MetroService
      can :read, Train
    end
  end
end
