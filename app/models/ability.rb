class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.super_admin?
      can :manage, :all
    elsif user.admin?
      can :manage, Container
      can :manage, Content
      can :manage, Contenttype
      can :manage, Contentcategory
      can :manage, Disc
      can :manage, Disctype
      can :manage, DiscContent
      can :manage, Gamegenere
      can :manage, Moviegenere
    elsif user.viewer?
      can :read, Container
      can :read, Content
      can :read, Contenttype
      can :read, Contentcategory
      can :read, Disc
      can :read, Disctype
      can :read, DiscContent
      can :read, Gamegenere
      can :read, Moviegenere
    end
  end
end
