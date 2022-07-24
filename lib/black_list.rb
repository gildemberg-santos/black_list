# frozen_string_literal: true

require_relative 'black_list/version'
require_relative 'black_list/domain_list'
require_relative 'black_list/domain_type'
require_relative 'black_list/domain'

module BlackList
  BLACKLIST = [{ domain: 'example.com', domain_type: :full }, { domain: 'example.net', domain_type: :host },
               { domain: 'example', domain_type: :partial }].freeze

  class Error < StandardError; end
end
