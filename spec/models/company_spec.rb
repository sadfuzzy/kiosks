require 'rails_helper'

RSpec.describe Company, type: :model do
  let(:params) { {} }
  subject { Company.new params }

  it { is_expected.to validate_presence_of(:title) }

  context 'initial' do
    it { is_expected.to be_invalid }
  end

  context 'with title' do
    let(:params) { { title: 'New company' } }

    it { is_expected.to be_valid }
  end
end
