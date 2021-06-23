require 'rails_helper'

RSpec.describe SkillProficiency, type: :model do
  let(:user) { create(:user) }
  let(:skill) { create(:skill) }

  it 'is valid with a proper user, skill and proficiency' do
    expect(described_class.new(user: user, skill: skill, proficiency: Rateable::PROFICIENCIES.sample)).to be_valid
  end

  it 'is valid with a nil proficiency' do
    expect(described_class.new(user: user, skill: skill)).to be_valid
  end

  it 'is invalid if the user already has a proficiency with that skill' do
    described_class.create(user: user, skill: skill)
    expect(described_class.new(user: user, skill: skill)).not_to be_valid
  end
end