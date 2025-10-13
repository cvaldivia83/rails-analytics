require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'is valid with first_name and last_name' do
    author = create(:author)
    expect(author).to be_valid
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end

  context 'Associations' do
    it  { is_expected.to have_many(:articles) }
  end
end
