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

  describe '#search' do
    let(:apple) { Company.create title: 'Apple', active: true }
    let(:ipad) { Product.create title: 'iPad', active: true, company: apple }
    let(:iphone) { Product.create title: 'iPhone', active: true, company: apple }

    context 'empty search' do
      subject { Product.search('') }
      it { is_expected.to include iphone, ipad }
    end

    context 'nil search' do
      subject { Product.search(nil) }
      it { is_expected.to include iphone, ipad }
    end

    context 'search phon' do
      subject { Product.search('phon') }
      it { is_expected.to include iphone }
      it { is_expected.to_not include ipad }
    end

    context 'search ipa (not beer)' do
      subject { Product.search('ipa') }
      it { is_expected.to include ipad }
      it { is_expected.to_not include iphone }
    end
  end
end
