class Permission < Struct.new(:user)
  def allow?(controller, action)
    return true if controller == "sessions"
    return true if controller == "users" && action.in?(%w[new, create])
    return true if controller == "projects" && action.in?(%w[index, show])
    return true if controller == "courses" && action.in?(%w[index, show])
  end
end
