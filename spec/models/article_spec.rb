require 'rails_helper'

RSpec.describe Article, type: :model do
  it "is valid with title, subtitle, body, author and year" do
    article = create(:article)
    expect(article).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:subtitle) }
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_presence_of(:author) }
    it { is_expected.to validate_presence_of(:year) }
    it { is_expected.to validate_numericality_of(:year) }
  end

  context 'Associations' do
    it { is_expected.to belong_to(:author) }
  end
end
