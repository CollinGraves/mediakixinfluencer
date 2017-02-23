class UserAuthorizationAdapter < ActiveAdmin::AuthorizationAdapter

  def authorized?(action, subject=nil)
    case subject
    when normalized(AdminUser)
      user.is_a?(AdminUser)
    when normalized(User)
      return true if user.is_a?(AdminUser)

      if action == :update
        subject == user
      elsif action == :create || action == :destroy
        false
      else
        true
      end
    else
      true
    end
  end

end
