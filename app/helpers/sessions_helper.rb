helpers do

  def login(user)
    session[:id] = user.id
  end

  def logout
    session[:id] = nil
  end

  def logged_in?
    !!session[:id]
  end

end
