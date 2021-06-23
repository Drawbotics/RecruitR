require 'rails_helper'

RSpec.describe SkillRequirement, type: :model do
  let(:position) { create(:position) }
  let(:skill) { create(:skill) }

  it 'is valid with a proper position, skill and requirement' do
    expect(described_class.new(position: position, skill: skill, proficiency: Rateable::PROFICIENCIES.sample)).to be_valid
  end

  it 'is valid with a nil requirement' do
    expect(described_class.new(position: position, skill: skill)).to be_valid
  end

  it 'is invalid if the position already has a requirement with that skill' do
    described_class.create(position: position, skill: skill)
    expect(described_class.new(position: position, skill: skill)).not_to be_valid
  end
end