get '/achievements' do
  @achievements = Achievement.all
  erb :"achievement/index"
end
