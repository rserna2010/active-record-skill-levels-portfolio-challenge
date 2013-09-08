class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :proficiencies
  has_many :skills, through: :proficiencies

  def proficiency_for(skill)
    user_id = self.id 
    skill_id = skill.id
    Proficiency.where(user_id: user_id, skill_id: skill_id).first.skill_level
  end

  def set_proficiency_for(skill, num)
    user_id = self.id
    skill_id = skill.id
    skill_change = Proficiency.where(user_id: user_id, skill_id: skill_id).first
    skill_change.skill_level = num
    skill_change.save
  end

end
