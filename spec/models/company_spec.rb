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

  describe '#active' do
    let(:company1) { Company.create title: 'Company 1', active: true }
    let(:company2) { Company.create title: 'Company 2', active: true }
    let(:company3) { Company.create title: 'Company 3', active: false }
    subject { Company.active }

    it { is_expected.to include company1, company2 }
    it { is_expected.to_not include company3 }
  end
end
