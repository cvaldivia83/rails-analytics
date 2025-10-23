require 'rails_helper'

RSpec.describe SearchSummary, type: :model do
  subject { SearchSummary.new(user_ip: '192.168.1.1', search_term: 'test', count: 1, last_searched_at: Time.current) }
  it 'is valid with IP, search term, count and last searched date' do
    search_summ = create(:search_summary)
    expect(search_summ).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:user_ip) }
    it { is_expected.to validate_presence_of(:search_term) }
    it { is_expected.to validate_presence_of(:count) }
    it { is_expected.to validate_presence_of(:last_searched_at) }
    it { is_expected.to validate_numericality_of(:count) }

    it { is_expected.to allow_value('233.28.81.112').for(:user_ip) }

    it { is_expected.to validate_uniqueness_of(:search_term).scoped_to(:user_ip) }
  end
end
