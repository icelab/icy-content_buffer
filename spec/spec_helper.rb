SPEC_ROOT = __dir__

# Prefer plain ERB processor rather than erubis (which has problems on JRuby)
require "erb"
require "tilt"
Tilt.register "erb", Tilt::ERBTemplate

require "byebug"
require "dry-view"
require "icy-content_buffer"

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.order = :random
  Kernel.srand config.seed
end

module Test

end
