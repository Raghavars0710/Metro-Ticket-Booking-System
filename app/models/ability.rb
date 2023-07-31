# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role == "Admin"
      can :manage, Member
      can :manage, MetroService
      can :manage, Train
      can :manage, Ticket
      can :manage, User
    else
      can :manage, Member
      can :manage
      can [:read, :create], Ticket
      can :read, :tickets

    end
  end
end
