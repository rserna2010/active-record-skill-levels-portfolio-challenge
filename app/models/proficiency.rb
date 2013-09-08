class Proficiency < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :skill

  before_create do 
    self.skill_level = 0 
  end
end
