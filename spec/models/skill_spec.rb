require 'rails_helper'

RSpec.describe Skill, type: :model do

  it 'is valid with all attributes' do
    expect(described_class.new(name: 'Ruby')).to be_valid
  end

  it 'is invalid without a name' do
    expect(described_class.new).not_to be_valid
  end

  it 'has a unique name' do
    described_class.create(name: 'Ruby')
    expect(described_class.new(name: 'Ruby')).not_to be_valid
  end
end