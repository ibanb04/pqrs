class Ability
  include CanCan::Ability
  
   def initialize(user)
     # Define abilities for the passed in user here. For example:
     if !user.nil?
      if user.role.name == 'Director'
        #PQR
        can :create, Pqr
        cannot :update, Pqr
        cannot :destroy, Pqr
        can :read, Pqr
        #DEPARTMENT
        cannot :create, Department
        cannot :update, Department
        cannot :destroy, Department
        can :read, Department
        #Doc
        cannot :create, Doc
        cannot :update, Doc
        cannot :destroy, Doc
        can :read, Doc
        #PQRTRACKINGS
        can :create, PqrTracking
        cannot :update, PqrTracking
        cannot :destroy, PqrTracking
        can :read, PqrTracking
        #ROLES
        cannot :create, Role
        cannot :update, Role
        cannot :destroy, Role
        can :read, Role
        #STATUSES
        cannot :create, Status
        cannot :update, Status
        cannot :destroy, Status
        can :read, Status
        #USERS
        cannot :create, User
        can :update, User
        can :destroy, User
        can :read, User
      elsif user.role.name == 'Admin'
        can :manage, :all
      elsif user.role.name == 'Esclavo'
        #PQR
        can :create, Pqr
        cannot :update, Pqr
        cannot :destroy, Pqr
        cannot :read, Pqr
        #DEPARTMENT
        cannot :create, Department
        cannot :update, Department
        cannot :destroy, Department
        cannot :read, Department
        #Doc
        cannot :create, Doc
        cannot :update, Doc
        cannot :destroy, Doc
        cannot :read, Doc
        #PQRTRACKINGS
        can :create, PqrTracking
        cannot :update, PqrTracking
        cannot :destroy, PqrTracking
        cannot :read, PqrTracking
        #ROLES
        cannot :create, Role
        cannot :update, Role
        cannot :destroy, Role
        cannot :read, Role
        #STATUSES
        cannot :create, Status
        cannot :update, Status
        cannot :destroy, Status
        cannot :read, Status
        #USERS
        cannot :create, User
        can :update, User
        can :destroy, User
        can :read, User
      elsif user.role.name == 'Lider'
        #PQR
        can :create, Pqr
        cannot :update, Pqr
        cannot :destroy, Pqr
        can :read, Pqr
        #DEPARTMENT
        cannot :create, Department
        cannot :update, Department
        cannot :destroy, Department
        can :read, Department
        #Doc
        can :create, Doc
        cannot :update, Doc
        cannot :destroy, Doc
        can :read, Doc
        #PQRTRACKINGS
        can :create, PqrTracking
        cannot :update, PqrTracking
        cannot :destroy, PqrTracking
        can :read, PqrTracking
        #ROLES
        cannot :create, Role
        cannot :update, Role
        cannot :destroy, Role
        can :read, Role
        #STATUSES
        cannot :create, Status
        cannot :update, Status
        cannot :destroy, Status
        can :read, Status
        #USERS
        cannot :create, User
        can :update, User
        can :destroy, User
        can :read, User
      end
    else
        #PQR
        can :create, Pqr
        cannot :update, Pqr
        cannot :destroy, Pqr
        cannot :read, Pqr
        #DEPARTMENT
        cannot :create, Department
        cannot :update, Department
        cannot :destroy, Department
        cannot :read, Department
        #Doc
        cannot :create, Doc
        cannot :update, Doc
        cannot :destroy, Doc
        cannot :read, Doc
        #PQRTRACKINGS
        cannot :create, PqrTracking
        cannot :update, PqrTracking
        cannot :destroy, PqrTracking
        can :read, PqrTracking
        #ROLES
        cannot :create, Role
        cannot :update, Role
        cannot :destroy, Role
        cannot :read, Role
        #STATUSES
        cannot :create, Status
        cannot :update, Status
        cannot :destroy, Status
        cannot :read, Status
        #USERS
        can :create, User
        cannot :update, User
        cannot :destroy, User
        cannot :read, User
    end

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
