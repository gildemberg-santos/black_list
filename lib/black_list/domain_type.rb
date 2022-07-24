# frozen_string_literal: true

module BlackList
  module DomainType
    def self.type_host
      :host
    end

    def self.type_partial
      :partial
    end

    def self.type_full
      :full
    end
  end
end
