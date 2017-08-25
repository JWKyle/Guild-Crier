class Achievement < ActiveRecord::Base

  has_many :comments
  has_many :woots

  def self.parse_achievements(achievement_data)
    achievement_data.each do |achievements|
      Achievement.create(character: achievements["character"], achievement_type: achievements["type"], item_id: achievements["item_id"])
    end
  end

end
