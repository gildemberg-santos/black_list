# frozen_string_literal: true

module BlackList
  # Class to manage blacklisted domains
  class Domain
    def initialize(domain:, domain_type: BlackList::DomainType.type_full)
      @domain = domain
      @domain_type = domain_type
    end

    def blacklisted?
      return false if @domain.nil?

      case @domain_type
      when :full then blacklisted_full?
      when :host then blacklisted_host?
      when :partial then blacklisted_partial?; end
    end

    private

    def blacklisted_partial?
      domain = BlackList::DomainList.domains.map do |item|
        item.fetch(:domain_type) == :partial ? item[:domain] : nil
      end
      domain.compact.any? { |item| item.include?(@domain) }
    end

    def blacklisted_full?
      BlackList::DomainList.domains.map do |item|
        item.fetch(:domain_type) == :full ? item[:domain] : nil
      end.compact.include?(@domain)
    end

    def blacklisted_host?
      false
    end
  end
end
