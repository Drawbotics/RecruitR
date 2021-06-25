require 'rails_helper'

RSpec.describe Position, type: :model do
  let(:position) { create(:position) }

  it { expect(position).to be_valid }

  describe '#accepted' do
    let!(:published_positions) { create_list(:position, 10, status: Position::PUBLISHED) }
    let!(:accepted_positions) { create_list(:position, 10, status: Position::ACCEPTED) }

    it 'correctly filters the given collection' do
      expect(described_class.accepted.ids).not_to include(*published_positions.pluck(:id))
      expect(described_class.accepted.ids).to match_array(accepted_positions.pluck(:id))
    end
  end

  describe '#perfect_matches' do
    let(:candidates) { create_list(:candidate, 40) }
    let(:position) { create(:position, status: Position::PUBLISHED) }
    let(:skills) { create_list(:skill, 5) }

    before do
      position.skills << skills
      candidates.each do |candidate|
        skill_number = rand(1..5)
        candidate.skills << skills.last(skill_number)
      end
    end

    it 'returns the right candidates' do
      perfect_candidates = Users::Candidate.all.select { |candidate| candidate.skills.count == Skill.count }
      expect(position.perfect_matches).to eql perfect_candidates
    end
  end
end
