class CreateSkillProficiencies < ActiveRecord::Migration[6.1]
  def change
    create_table :skill_proficiencies do |t|
      t.references :skill, index: true
      t.references :user, index: true
      t.string :proficiency
      t.timestamps
    end
  end
end
