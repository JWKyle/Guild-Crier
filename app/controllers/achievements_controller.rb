get '/achievements' do
  @achievements = Achievement.all
  erb :"achievements/index"
end
