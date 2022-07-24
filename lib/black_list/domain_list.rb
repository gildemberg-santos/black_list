# frozen_string_literal: true

module BlackList
  module DomainList
    def self.domains
      [{ domain: 'example.com', domain_type: :full }, { domain: 'example.net', domain_type: :host },
       { domain: 'example', domain_type: :partial }]
    end
  end
end
