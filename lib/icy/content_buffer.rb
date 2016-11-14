require "icy/content_buffer/version"

module Icy
  class ContentBuffer
    def initialize
      @content_buffer = {}
    end

    def set(key, value = nil)
      @content_buffer[key] = block_given? ? yield : value
      nil
    end

    def get(key)
      @content_buffer[key]
    end
  end
end

