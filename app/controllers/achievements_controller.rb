get '/achievements' do
  @achievements_data = AchievementGrabber.new
 Achievement.parse_achievements(@achievements_data.test_endpoint('/')["news"])

 @achievements = Achievement.all

  erb :"achievements/index"
end
