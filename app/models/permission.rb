class Permission < Struct.new(:user)
  def allow?(controller, action)
    return true if controller == "landing"
    return true if controller == "sessions"
    return true if controller == "users" && action.in?(%w[new create])
    return true if controller == "projects" && action.in?(%w[index show])
    return true if controller == "courses" && action.in?(%w[index show])
    if user
      if user.isadmin?
        return true
      else
        return true if controller == "projects" && action.in?(%w[new edit create update])
        return true if controller == "users" && action.in?(%w[edit update show])
        return true if controller == "evaluations" && action.in?(%w[edit update create index show destroy new])
        return true if controller == "project_participants" && action.in?(%w[create destroy new])
      end
    end
  end
end
