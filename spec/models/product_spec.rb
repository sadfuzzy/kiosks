require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:params) { {} }
  subject { Product.new params }

  it { is_expected.to validate_presence_of(:title) }

  context 'initial' do
    it { is_expected.to be_invalid }
  end

  context 'with title and company' do
    let(:company) { Company.new title: 'Company', active: true }
    let(:params) { { title: 'New product', company: company } }

    it { is_expected.to be_valid }
  end

  describe '#active' do
    let(:company1) { Company.create title: 'Company 1', active: true }
    let(:company2) { Company.create title: 'Company 2', active: false }
    let(:product1) { Product.create title: 'Product 1', active: true, company: company1 }
    let(:product2) { Product.create title: 'Product 2', active: false, company: company1 }
    let(:product3) { Product.create title: 'Product 3', active: true, company: company2 }
    subject { Product.active }

    it { is_expected.to include product1 }
    it { is_expected.to_not include product2, product3 }
  end
end
