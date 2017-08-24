def current_user
  @current_user ||= User.find(session[:user_id])
end

def logged_in?
  session[:user_id] != nil
end

def authenticate!
  redirect '/sessions/new' unless logged_in?
end

def authorize!(user)
  redirect '/' unless authorized?(user)
end

def authorized?(user)
  current_user == user
end
