class CreateSkillRequirements < ActiveRecord::Migration[6.1]
  def change
    create_table :skill_requirements do |t|
      t.references :skill, index: true
      t.references :position, index: true
      t.string :proficiency
      t.timestamps
    end
  end
end
