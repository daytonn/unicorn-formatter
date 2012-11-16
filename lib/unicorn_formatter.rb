require 'rspec/core/formatters/base_formatter'

class UnicornFormatter < RSpec::Core::Formatters::BaseFormatter

  def close
    %x{unicornleap} unless failure_count > 0
  end

end