require 'rails_helper'

RSpec.describe SearchSummary, type: :model do
  it 'is valid with IP, session, search term, count and last searched date' do
    search_summ = create(:search_summary)
    expect(search_summ).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:user_ip) }
    it { is_expected.to validate_presence_of(:session_id) }
    it { is_expected.to validate_presence_of(:search_term) }
    it { is_expected.to validate_presence_of(:count) }
    it { is_expected.to validate_presence_of(:last_searched_at) }
    it { is_expected.to validate_length_of(:session_id) }
    it { is_expected.to validate_numericality_of(:count) }

    it { is_expected.to allow_value('233.28.81.112').for(:user_ip) }

    it { is_expected.to allow_value('a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6').for(:session_id) }
  end
end
