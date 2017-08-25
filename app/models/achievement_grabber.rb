class AchievementGrabber
  include HTTParty

base_uri 'https://us.api.battle.net'

  def initialize #(service, page)
  #  @options = { query: { site: service, page: page } }
  end

  def test_endpoint(endpoint)
   self.class.get("/wow/guild/area-52/dancing%20Panadas?fields=news&locale=en_US&apikey=5m7a96qg395j69hy6ams8muahxr8yhyj")
 end

end
