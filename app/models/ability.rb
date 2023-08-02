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
    else
      can :manage, User, id: user.id
      can :manage, Member, user_id: user.id
      can :manage, Ticket, user_id: user.id
      can :read, MetroService 
      can :read, Train 
    end
    
    can [:update, :destroy], User, id: user.id 
  end
end