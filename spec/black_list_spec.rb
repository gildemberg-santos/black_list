require_relative '../lib/black_list/domain_type'
require_relative '../lib/black_list/domain_list'
require_relative '../lib/black_list/domain'
require_relative '../lib/black_list/version'

describe BlackList::Domain do
  it 'has a version number' do
    expect(BlackList::VERSION).not_to be nil
  end

  it 'is blacklisted' do
    expect(BlackList::Domain.new(domain: 'example.com').blacklisted?).to be true
  end

  it 'is not blacklisted' do
    expect(BlackList::Domain.new(domain: 'example.net').blacklisted?).to be false
  end

  it 'is nil blacklisted' do
    expect(BlackList::Domain.new(domain: nil, domain_type: nil).blacklisted?).to be false
  end

  it 'is blacklisted partial' do
    expect(BlackList::Domain.new(domain: 'example', domain_type: BlackList::DomainType.type_partial).blacklisted?).to be true
  end

  it 'is not blacklisted partial' do
    expect(BlackList::Domain.new(domain: 'batata', domain_type: BlackList::DomainType.type_partial).blacklisted?).to be false
  end
end