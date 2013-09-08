class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table  :proficiencies do |t|
    t.belongs_to  :skill
    t.belongs_to  :user 
    t.integer     :skill_level
    end
  end
end
