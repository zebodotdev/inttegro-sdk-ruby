# typed: true

# Prism 1.6.0's bundled RBI references this compatibility result without
# declaring the namespace. Keep Sorbet able to validate dependency signatures.
module Prism
  module LexCompat
    class Result < Prism::Result; end
  end
end
