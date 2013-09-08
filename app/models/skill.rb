class Skill < ActiveRecord::Base
  # Remember to create a migration!
  has_many :proficiencies
  has_many :users, through: :proficiencies

  validates :name, uniqueness: true 

  def user_with_proficiency(number)
    user_id = self.proficiencies.where(skill_level: number).first.user_id
    User.find(user_id)
  end

end
