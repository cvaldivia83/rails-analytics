require 'rails_helper'

RSpec.describe SearchLog, type: :model do
  it "is valid with IP address, session id and query" do
    log = create(:search_log)
    expect(log).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:user_ip) }
    it { is_expected.to validate_presence_of(:session_id) }
    it { is_expected.to validate_presence_of(:query) }
    it { is_expected.to allow_value('233.28.81.112').for(:user_ip) }
    it { is_expected.to allow_value('a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6').for(:session_id) }
  end
end
