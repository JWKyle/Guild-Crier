get '/sessions/new' do
  erb :"session/new"
end

post '/sessions' do
  @user = User.find_by(username: params[:username])

  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect '/'
  else
    @message = "Please enter a valid e-mail or password."
    erb :"session/new"
  end

end

delete '/sessions' do
  session.delete(:user_id)
  redirect '/'
end
